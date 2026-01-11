//
//  Project.swift
//  Manifests
//
//  Created by Engin Gülek on 11.01.2026.
//

import ProjectDescription

let allListModule = Project(
    name: "ICTMDBAllListModule",
    packages: [
        .package(url: "https://github.com/engingulek/GenericCollectionViewKit.git", from: "0.0.7"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/engingulek/HPDependencyKit", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ICTMDBAllListModule",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.ICTMDBAllListModule",
            deploymentTargets: .iOS("26.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: [],
            dependencies: [
                .target(name: "AllListModuleProtocol"),
                .project(target: "NetworkManagerKit", path: .relativeToRoot("Kits/NetworkManagerKit")),
                .project(target: "CoreKitFoundation", path: .relativeToRoot("Kits/CoreKit")),
                .project(target: "CoreKitUI", path: .relativeToRoot("Kits/CoreKit")),
                .project(target: "DetailModuleProtocol", path: .relativeToRoot("Modules/ICTMDBDetailModule")),
                .package(product: "GenericCollectionViewKit"),
                .package(product: "SnapKit"),
                .package(product: "DependencyKit")
            ]
        ),
        
            .target(name:"AllListModuleProtocol",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "com.engingulek.AllListModuleProtocol",
                    sources: "ProtocolSource/**"
                    
                   ),
        
    ]
)
