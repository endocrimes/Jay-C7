import PackageDescription

let package = Package(
    name: "Jay-C7",
    dependencies: [
    	.Package(url: "https://github.com/czechboy0/Jay.git", versions: Version(0,14,0)..<Version(1,0,0)),
    	.Package(url: "https://github.com/open-swift/C7.git", versions: Version(0,8,0)..<Version(1,0,0))
    ]
)
