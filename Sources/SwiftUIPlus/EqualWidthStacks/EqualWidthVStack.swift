//
//  EqualWidthVStack.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/8/25.
//

import SwiftUI

struct EqualWidthVStack: Layout {
    // calculate and report how large my layout container is
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let maxSize = subviews.maxSize
        let maxSpacing = subviews.maxSpacingY
        let totalSpacing = maxSpacing.reduce(0, +)
        
        return CGSize(
            width: maxSize.width,
            height: maxSize.height * CGFloat(subviews.count) + totalSpacing
        )
    }
    
    // tell layout subviews where to appear
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let maxSize = subviews.maxSize
        // let maxSpacingX = subviews.maxSpacingX
        let maxSpacingY = subviews.maxSpacingY
    
//        let sizeProposal = ProposedViewSize(
//            width: maxSize.width,
//            height: maxSize.height
//        )
        // only one proposal since all buttons are the same size
        let sizeProposal = ProposedViewSize(maxSize)
        
        var y = bounds.midY
        let x = bounds.minX + maxSize.width / 2
        
        for index in subviews.indices {
            subviews[index].place(
                at: .init(x: x, y: y),
                anchor: .center,
                proposal: sizeProposal
            )
            y += maxSize.height + maxSpacingY[index]
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
