//
//  ICTMDBDetailModule.swift
//  ICTMDBDetailModule
//
//  Created by Engin Gülek on 12.11.2025.
//

import Foundation
import UIKit

// MARK: - TV Show Detail Module Protocol
/// A protocol responsible for creating and returning
/// the detail screen of a selected TV show.
public protocol DetailModuleProtocol {
    
    /// Creates and returns the detail view controller for a TV show.
    /// - Parameter id: The unique identifier of the TV show (optional).
    /// - Returns: A configured `UIViewController` displaying the TV show details.
    func createTvShowDetailModule(id: Int?) -> UIViewController
}


