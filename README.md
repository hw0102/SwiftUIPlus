# SwiftUIPlus

`SwiftUIPlus` is a small collection of reusable SwiftUI layout utilities for common UI problems that the built-in stacks do not handle directly.

Current package contents:

- `EqualWidthHStack`: an `HStack`-style layout where every child takes the width of the widest child
- `EqualWidthVStack`: a `VStack`-style layout where every child takes the width of the widest child
- `AutoSizeLazyVGridForEnum`: a simple enum-driven grid that groups `CaseIterable` values into rows

## Requirements

- iOS 16+
- macOS 12+
- Swift 6 tools

## Installation

### Swift Package Manager

In Xcode:

1. Open your project.
2. Go to `File > Add Package Dependencies...`
3. Enter your repository URL.
4. Choose a version rule and add the `SwiftUIPlus` product.

If you are depending on the package in another Swift package:

```swift
dependencies: [
    .package(url: "https://github.com/your-name/SwiftUIPlus.git", from: "0.1.0")
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

## Included Layouts

### EqualWidthHStack

Use `EqualWidthHStack` when you want horizontally arranged views to share the same width based on the widest item.

```swift
import SwiftUI
import SwiftUIPlus

struct EqualWidthButtonsView: View {
    var body: some View {
        EqualWidthHStack {
            Button("Short") { }
                .buttonStyle(.borderedProminent)

            Button("A Much Longer Title") { }
                .buttonStyle(.borderedProminent)

            Button("Mid") { }
                .buttonStyle(.borderedProminent)
        }
    }
}
```

This is useful for:

- button groups
- segmented action rows
- compact forms where visual alignment matters

### EqualWidthVStack

Use `EqualWidthVStack` when you want vertically stacked views to match the width of the widest item.

```swift
import SwiftUI
import SwiftUIPlus

struct EqualWidthColumnView: View {
    var body: some View {
        EqualWidthVStack {
            Text("Small")
                .padding()
                .background(.blue.opacity(0.1))

            Text("A Wider Piece of Content")
                .padding()
                .background(.blue.opacity(0.1))

            Text("Medium")
                .padding()
                .background(.blue.opacity(0.1))
        }
    }
}
```

This is useful for:

- action sheets built in SwiftUI
- vertically stacked controls
- custom sidebars or tool palettes

### AutoSizeLazyVGridForEnum

Use `AutoSizeLazyVGridForEnum` when you already have a `CaseIterable` enum and want to render it as evenly grouped rows without manually chunking the cases yourself.

```swift
import SwiftUI
import SwiftUIPlus

enum Filter: String, CaseIterable, Hashable {
    case all
    case favorites
    case unread
    case archived
    case flagged
}

struct FilterGridView: View {
    var body: some View {
        AutoSizeLazyVGridForEnum<Filter, Text>(
            rowSize: 3,
            rowSpacing: 12,
            columnSpacing: 12
        ) { filter in
            Text(filter.rawValue.capitalized)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(.gray.opacity(0.15))
                .clipShape(Capsule())
        }
    }
}
```

This is useful for:

- filter chips
- enum-based pickers
- settings choices

## Why This Package Exists

SwiftUI gives you strong primitives, but some layout behaviors still require custom `Layout` types or repetitive data transformation. This package extracts a few of those patterns into reusable building blocks.

## Versioning

This package should be versioned with Git tags using semantic versioning:

- `PATCH` for fixes
- `MINOR` for new backward-compatible additions
- `MAJOR` for breaking API changes

Example:

```bash
git tag 0.1.0
git push origin 0.1.0
```

## Development Notes

The package manifest is currently:

- library product: `SwiftUIPlus`
- platforms: iOS 16 and macOS 12
- tools version: Swift 6.0

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines and pull request expectations.

## License

MIT.
