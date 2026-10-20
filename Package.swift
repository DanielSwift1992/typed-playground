// swift-tools-version:6.0
// The playground worlds are real Swift. Each tab is a target that compiles
// against the theory's lattice and the showcase's DocumentKit, pulled in as
// packages at pinned revisions: `swift build` is the ground-truth check that the
// file the page renders is the file the compiler accepts. The site is a thin
// layer generated on top of this package. VI_THEORY_PATH and VI_SHOWCASE_PATH
// name local checkouts instead of the pins, for development; the showcase pins
// the same theory revision, and SwiftPM resolves one theory for both.
import PackageDescription

let theoryRevision = "50a9bb9a364688508a55986b08ea9d269f3c4a29"
let showcaseRevision = "8b69d9f3be6f9f6c46ae51492ad1972c4b4ccc5c"
let theory: Package.Dependency = Context.environment["VI_THEORY_PATH"]
    .map { .package(name: "verification-is-identification", path: $0) }
    ?? .package(url: "https://github.com/DanielSwift1992/verification-is-identification", revision: theoryRevision)
let showcase: Package.Dependency = Context.environment["VI_SHOWCASE_PATH"]
    .map { .package(name: "verification-is-identification-showcase", path: $0) }
    ?? .package(url: "https://github.com/DanielSwift1992/verification-is-identification-showcase", revision: showcaseRevision)

let package = Package(
    name: "PlaygroundWorlds",
    platforms: [.macOS(.v13)],
    dependencies: [theory, showcase],
    targets: [
        // the site's own parts, declared the way the tabs are: build.mjs reads
        // this one with the page's judge, and the compiler reads it here
        .target(
            name: "SiteManifest",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus",
            sources: ["Manifest.swift", "Palette.swift"]
        ),
        .target(
            name: "AtomTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Atom.swift", "AtomPages.swift"]
        ),
        .target(
            name: "BasicsTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Basics.swift"]
        ),
        .target(
            name: "CompanyTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
                .product(name: "Organization", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Company.swift"]
        ),
        .target(
            name: "FAQTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["FAQ.swift"]
        ),
        .target(
            name: "LightTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Light.swift", "LightPages.swift"]
        ),
        .target(
            name: "OrganizationTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
                .product(name: "Organization", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Organization.swift"]
        ),
        .target(
            name: "ReadMeTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["ReadMe.swift"]
        ),
        .target(
            name: "RulesTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Rules.swift"]
        ),
        .target(
            name: "TypewriterTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["Typewriter.swift"]
        ),
        .target(
            name: "WorldTab",
            dependencies: [
                .product(name: "VerificationIsIdentification", package: "verification-is-identification"),
                .product(name: "DocumentKit", package: "verification-is-identification-showcase"),
            ],
            path: "corpus/worlds",
            sources: ["World.swift"]
        )
    ]
)
