# AutoSizeLazyVGridForEnum

`AutoSizeLazyVGridForEnum` is a small SwiftUI helper for rendering a `CaseIterable` enum in evenly grouped rows without manually chunking the values.

## Usage

Use `AutoSizeLazyVGridForEnum` when:

- your data source is a `CaseIterable` enum
- you want a simple row-based arrangement
- you want to bring your own styling for each item

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

## Parameters

- `rowSize`: the number of enum cases to place in each row
- `rowSpacing`: the vertical spacing between rows
- `columnSpacing`: the horizontal spacing between items within a row
- `content`: a view builder that renders each enum case

## Good Use Cases

- filter chips
- enum-based pickers
- settings options
- compact selection UIs

## Notes

- The generic type must conform to `CaseIterable` and `Hashable`.
- The final row can contain fewer items than `rowSize`.
- This utility uses stacked rows, not SwiftUI's native `LazyVGrid`.
