# EqualWidthStacks

`EqualWidthStacks` contains layout utilities for cases where each child should size itself to the widest item in the stack.

Included utilities:

- `EqualWidthHStack`
- `EqualWidthVStack`

## EqualWidthHStack

Use `EqualWidthHStack` when you want horizontally arranged views to share the same width based on the widest child.

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

Good use cases:

- button groups
- action rows
- controls that should align visually across varying content widths

## EqualWidthVStack

Use `EqualWidthVStack` when you want vertically stacked views to match the width of the widest child.

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

Good use cases:

- vertically stacked controls
- custom action sheets
- sidebars or tool palettes with consistent widths

## Notes

- These utilities are based on SwiftUI's `Layout` protocol.
- Spacing is derived from the subviews' preferred spacing.
- Each child is placed using the size of the widest child in the stack.
