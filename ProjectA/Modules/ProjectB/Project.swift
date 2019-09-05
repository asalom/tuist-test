import ProjectDescription

let project = Project(name: "ProjectB",
                      targets: [
                        Target(name: "ProjectB",
                               platform: .iOS,
                               product: .framework,
                               bundleId: "es.alexsalom.ProjectB",
                               infoPlist: "Info.plist",
                               sources: ["Sources/**"],
                               resources: [
                                       /* Path to resouces can be defined here */
                                       // "Resources/**"
                               ],
                               dependencies: [
                                    .cocoapods(path: ".")
                                ]),
                        Target(name: "ProjectBTests",
                               platform: .iOS,
                               product: .unitTests,
                               bundleId: "ies.alexsalom.ProjectBTests",
                               infoPlist: "Tests.plist",
                               sources: "Tests/**",
                               dependencies: [
                                    .target(name: "ProjectB")
                               ])
                      ])