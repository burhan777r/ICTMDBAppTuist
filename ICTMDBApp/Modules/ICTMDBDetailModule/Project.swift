//
//  Project.swift
//  Manifests
//
//  Created by Engin Gülek on 11.01.2026.
//

import ProjectDescription
let detailModule = Project(
    name: "ICTMDBDetailModule",
    packages: [
        .package(url: "https://github.com/engingulek/GenericCollectionViewKit.git", from: "0.0.7"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1")
    ],
    targets: [
        .target(
            name: "ICTMDBDetailModule",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.ICTMDBDetailModule",
            deploymentTargets: .iOS("26.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: [],
            dependencies: [
                .target(name: "DetailModuleProtocol"),
                .project(target: "NetworkManagerKit", path: .relativeToRoot("Kits/NetworkManagerKit")),
                .project(target: "CoreKitFoundation", path: .relativeToRoot("Kits/CoreKit")),
                .project(target: "CoreKitUI", path: .relativeToRoot("Kits/CoreKit")),
                .package(product: "GenericCollectionViewKit"),
                .package(product: "SnapKit")
            ]
        ),
        
            .target(name:"DetailModuleProtocol",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "com.engingulek.DetailModuleProtocol",
                    sources: "ProtocolSource/**"
                    
                   ),
        
    ]
)
