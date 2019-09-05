import ProjectDescription

let project = Project(name: "ProjectA",
                      targets: [
                        Target(name: "ProjectA",
                               platform: .iOS,
                               product: .app,
                               bundleId: "es.alexsalom.ProjectA",
                               infoPlist: "Info.plist",
                               sources: ["Sources/**"],
                               resources: [
                                       /* Path to resouces can be defined here */
                                       // "Resources/**"
                               ],
                               dependencies: [
                                       .project(target: "ProjectB", path: "./Modules/ProjectB"),
                                       .cocoapods(path: ".")
                                ]),
                        Target(name: "ProjectAATests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "es.alexsalom.ProjectATests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "ProjectA")
                               ])
                      ])