//
//  Project.swift
//  Manifests
//
//  Created by Engin Gülek on 11.01.2026.
//

import ProjectDescription

import ProjectDescription

let coreKit = Project(
    name: "CoreKit",
    packages: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.1.0")
    ],
    targets: [
        // 1. ASSETS:
        .target(
            name: "CoreKitAssets",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.CoreKitAssets",
            deploymentTargets: .iOS("26.0"),
            sources: [],
            resources: ["Targets/CoreKitAssets/Resources/**"]
        ),

        // 2. FOUNDATION:
        .target(
            name: "CoreKitFoundation",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.CoreKitFoundation",
            deploymentTargets: .iOS("26.0"),
            sources: ["Targets/CoreKitFoundation/Sources/**"],
            dependencies: [
                .target(name: "CoreKitAssets")
            ]
        ),

        // 3. UI (UIKit):
        .target(
            name: "CoreKitUI",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "com.engingulek.CoreKitUI",
            deploymentTargets: .iOS("26.0"),
            sources: ["Targets/CoreKitUI/Sources/**"],
            dependencies: [
                .target(name: "CoreKitAssets"),
                .package(product: "Kingfisher")
            ]
        )
    ]
)
