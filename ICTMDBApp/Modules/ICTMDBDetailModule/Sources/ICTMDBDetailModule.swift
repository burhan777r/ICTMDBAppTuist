//
//  ICTMDBDetailModule.swift
//  ICTMDBDetailModule
//
//  Created by Engin Gülek on 11.01.2026.
//

import UIKit
import DetailModuleProtocol
import NetworkManagerKit
public class ICTMDBDetailModule : @MainActor DetailModuleProtocol {
    public init() {}
    @MainActor public func createTvShowDetailModule(id: Int?) -> UIViewController {
        let viewController =  DetailViewController()
        let _ = DetailRouter()
        let interactor = TvShowDetailInteractor(network: NetworkManager())
        let presenter : any ViewToPresenterTvShowDetailProtocol & InteractorToPresenterTvShowDetailProtocol
        = TvShowDetailPresenter(view: viewController, interactor: interactor)
        viewController.presenter = presenter
        interactor.presenter = presenter
        presenter.getID(id: id)
        return viewController
    }
    
    
    
  
}
