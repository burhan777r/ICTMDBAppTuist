//
//  AllKitchensModuleProtocol.swift
//  AllKitchensModule
//
//  Created by Engin Gülek on 29.09.2024.
//

import Foundation
import SwiftUI


// MARK: - All List Module Protocol
/// Represents the type of list to be displayed in the All List module.
/// For example, popular TV shows or shows airing today.
public enum AllListType {
    case popular
    case airingToday
}


public protocol AllListModuleProtocol {
    
    ///Creates and returns a configured All List module for the given type.
    /// - Parameter type: The list type (e.g., `.popular` or `.airingToday`).
    /// - Returns: A `UIViewController` configured to display the corresponding list.
    func createAllListModule(type: AllListType) -> UIViewController
}
