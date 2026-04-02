# SwiftUIPlus

`SwiftUIPlus` is a small collection of reusable SwiftUI layout utilities for common UI problems that the built-in stacks do not handle directly.

Current package contents:

- `EqualWidthHStack`: an `HStack`-style layout where every child takes the width of the widest child
- `EqualWidthVStack`: a `VStack`-style layout where every child takes the width of the widest child
- `AutoSizeLazyVGridForEnum`: a simple enum-driven grid that groups `CaseIterable` values into rows

## Requirements

- iOS 16+
- macOS 13+
- Swift 6 tools

## Installation

### Swift Package Manager

In Xcode:

1. Open your project.
2. Go to `File > Add Package Dependencies...`
3. Enter this repository URL: `https://github.com/hw0102/SwiftUIPlus.git`
4. Choose a version rule and add the `SwiftUIPlus` product.

If you are depending on the package in another Swift package:

```swift
dependencies: [
    .package(url: "https://github.com/hw0102/SwiftUIPlus.git", from: "0.1.0")
]
```

Then add the product to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "SwiftUIPlus", package: "SwiftUIPlus")
    ]
)
```

## Utility Guides

Each utility folder includes its own usage guide:

- [EqualWidthStacks](Sources/SwiftUIPlus/EqualWidthStacks/README.md)
- [AutoSizeLazyVGridForEnum](Sources/SwiftUIPlus/AutoSizeLazyVGridForEnum/README.md)

## Why This Package Exists

SwiftUI gives you strong primitives, but some layout behaviors still require custom `Layout` types or repetitive data transformation. This package extracts a few of those patterns into reusable building blocks.

## Versioning

This package is versioned with Git tags using semantic versioning:

- `PATCH` for fixes
- `MINOR` for new backward-compatible additions
- `MAJOR` for breaking API changes


## Development Notes

The package manifest is currently:

- library product: `SwiftUIPlus`
- platforms: iOS 16 and macOS 13
- tools version: Swift 6.0

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines and pull request expectations.

## License

MIT.
