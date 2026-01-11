//
//  AllListRouter.swift
//  ICTMDBAllListModule
//
//  Created by Engin Gülek on 12.11.2025.
//


import UIKit
import DetailModuleProtocol
import DependencyKit

class AllListRouter : PresenterToRouterAllListProtocol{
    func toDetail(view: PresenterToViewAllListProtocol?, id: Int?) {
        let detailModule =  DependencyRegister.shared.resolve(DetailModuleProtocol.self)
        let controller = detailModule.createTvShowDetailModule(id: id)
        view?.pushViewControllerAble(controller, animated: true)
    }
}
