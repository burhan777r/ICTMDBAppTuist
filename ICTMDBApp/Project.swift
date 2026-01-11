import ProjectDescription

let project = Project(
    name: "ICTMDBApp",
    packages: [
        .package(url: "https://github.com/engingulek/HPDependencyKit", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ICTMDBApp",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.ICTMDBApp",
            infoPlist: .extendingDefault(
                with: [
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                                ]
                            ]
                        ]
                    ],
                    "UILaunchStoryboardName": "LaunchScreen" 
                ]
            ),
            sources: ["ICTMDBApp/Sources/**"],
            resources: ["ICTMDBApp/Resources/**"],
            dependencies: [
                .package(product: "DependencyKit"),
                .project(target: "HomeModuleProtocol", path: .relativeToRoot("Modules/ICTMDBHomeModule")),
                .project(target: "ICTMDBHomeModule", path: .relativeToRoot("Modules/ICTMDBHomeModule")),
                
                .project(target: "ICTMDBAllListModule", path: .relativeToRoot("Modules/ICTMDBAllListModule")),
                .project(target: "AllListModuleProtocol", path: .relativeToRoot("Modules/ICTMDBAllListModule")),
                
                .project(target: "ICTMDBDetailModule", path: .relativeToRoot("Modules/ICTMDBDetailModule")),
                .project(target: "DetailModuleProtocol", path: .relativeToRoot("Modules/ICTMDBDetailModule")),
                
            ]
        ),
    ]
)
