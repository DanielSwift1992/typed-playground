// swift-tools-version:6.0
// The playground worlds are real Swift. Each tab is a target that compiles
// against the theory's own modules, pulled in as a package: `swift build` is the
// ground-truth check that the file the page renders is the file the compiler
// accepts. The site is a thin layer generated on top of this package.
import PackageDescription

let package = Package(
    name: "PlaygroundWorlds",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(path: "../verification-is-identification"),
    ],
    targets: [
        .target(
            name: "AtomTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Atom.swift"]
        ),
        .target(
            name: "BasicsTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Basics.swift"]
        ),
        .target(
            name: "CompanyTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
                .product(name: "Organization", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Company.swift"]
        ),
        .target(
            name: "FAQTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["FAQ.swift"]
        ),
        .target(
            name: "LightTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Light.swift"]
        ),
        .target(
            name: "OrganizationTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
                .product(name: "Organization", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Organization.swift"]
        ),
        .target(
            name: "ReadMeTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["ReadMe.swift"]
        ),
        .target(
            name: "RulesTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Rules.swift"]
        ),
        .target(
            name: "TypewriterTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["Typewriter.swift"]
        ),
        .target(
            name: "WorldTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification"),
            ],
            path: "corpus/worlds",
            sources: ["World.swift"]
        )
    ]
)
