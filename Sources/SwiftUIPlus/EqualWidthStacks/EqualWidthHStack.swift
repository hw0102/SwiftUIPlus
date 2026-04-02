//
//  EqualWidthHStack.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/8/25.
//

import SwiftUI

/// HStack but every view takes on the width of the widest view
public struct EqualWidthHStack: Layout {
    public init() {}

    // calculate and report how large my layout container is
    public func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let maxSize = subviews.maxSize
        let maxSpacing = subviews.maxSpacingX
        let totalSpacing = maxSpacing.reduce(0, +)
        
        return CGSize(
            width: maxSize.width * CGFloat(subviews.count) + totalSpacing,
            height: maxSize.height
        )
    }
    
    // tell layout subviews where to appear
    public func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let maxSize = subviews.maxSize
        let maxSpacingX = subviews.maxSpacingX
        //let maxSpacingY = subviews.maxSpacingY
        
        // only one proposal since all buttons are the same size
        let sizeProposal = ProposedViewSize(maxSize)
        
        let y = bounds.midY
        var x = bounds.minX + maxSize.width / 2
        
        for index in subviews.indices {
            subviews[index].place(
                at: .init(x: x, y: y),
                anchor: .center,
                proposal: sizeProposal
            )
            x += maxSize.width + maxSpacingX[index]
        }
    }
}

#Preview {
    EqualWidthHStack {
        ButtonView(text: "Hello, World!")
        ButtonView(text: "a")
        ButtonView(text: "ThisIsALongerText")
    }
}
