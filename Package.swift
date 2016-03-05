import PackageDescription


let package = Package(
  name: "NestTest",
  dependencies: [
    .Package(url: "https://github.com/nestproject/Nest.git", majorVersion: 0, minor: 2),
    .Package(url: "https://github.com/nestproject/Inquiline.git", majorVersion: 0, minor: 2),
  ],
  testDependencies: [
    .Package(url: "https://github.com/kylef/spectre-build.git", majorVersion: 0),
  ]
)
