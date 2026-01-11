//
//  Project.swift
//  Manifests
//
//  Created by Engin Gülek on 11.01.2026.
//

import ProjectDescription
let homeModule = Project(
    name: "ICTMDBHomeModule",
    packages: [
        .package(url: "https://github.com/engingulek/GenericCollectionViewKit.git", from: "0.0.7"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/engingulek/HPDependencyKit", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ICTMDBHomeModule",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.ICTMDBHomeModule",
            deploymentTargets: .iOS("26.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: [],
            dependencies: [
                .target(name: "HomeModuleProtocol"),
                .project(target: "NetworkManagerKit", path: .relativeToRoot("Kits/NetworkManagerKit")),
                .project(target: "CoreKitFoundation", path: .relativeToRoot("Kits/CoreKit")),
                .project(target: "CoreKitUI", path: .relativeToRoot("Kits/CoreKit")),
                .package(product: "GenericCollectionViewKit"),
                .project(target: "AllListModuleProtocol", path: .relativeToRoot("Modules/ICTMDBAllListModule")),
                .project(target: "DetailModuleProtocol", path: .relativeToRoot("Modules/ICTMDBDetailModule")),
                .package(product: "SnapKit"),
                .package(product: "DependencyKit")
            ]
        ),
        
            .target(name:"HomeModuleProtocol",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "com.engingulek.HomeModuleProtocol",
                    sources: "ProtocolSource/**"
                    
                   ),
        .target(
            name: "HomeModuleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.ICTMDBAppTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: "ICTMDBHomeModule")]
        )
        
    ]
)
