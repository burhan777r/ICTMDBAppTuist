//
//  HomeModuleProtocol.swift
//  HomeModule
//
//  Created by Engin Gülek on 27.09.2024.
//

import Foundation
import UIKit

// MARK: - Home Module Protocol
/// Defines the contract for creating the Home module’s view controller.
/// Used to assemble and return the main screen of the application.
public protocol HomeModuleProtocol {
    
    /// Creates and returns the Home module’s main view controller.
    /// - Returns: A configured `UIViewController` representing the Home screen.
    func createHomeModule() -> UIViewController
}
