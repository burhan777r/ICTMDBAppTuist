//
//  Project.swift
//  Manifests
//
//  Created by Engin Gülek on 11.01.2026.
//

import Foundation
import ProjectDescription

let networkManagerKit = Project(
    name: "NetworkManagerKit",
    packages: [.package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.0")],
    targets: [
        .target(
            name: "NetworkManagerKit",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "dev.tuist.NetworkManagerKit",
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .package(product: "Alamofire")
            ]
        
        ),
       
    ]
)
