//
//  Extensions.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/8/25.
//

import Foundation
import SwiftUI

extension Layout.Subviews {
    var maxSize: CGSize {
        // ask each view for its size
        let subviewSizes = self.map { $0.sizeThatFits(.unspecified) }
        // find largest values in both dimensions
        let maxSize: CGSize = subviewSizes.reduce(.zero) {
            currentMax,
            subviewSize in
            CGSize(
                width: Swift.max(currentMax.width, subviewSize.width),
                height: Swift.max(currentMax.height, subviewSize.height)
            )
        }
        
        return maxSize
    }
    
    // total preferred spacing in x
    var maxSpacingX: [CGFloat] {
        self.indices.map { index in
            // drop last
            guard index < self.count - 1 else { return 0 }
            return self[index].spacing.distance(to: self[index + 1].spacing, along: .horizontal)
        }
    }
    
    // total preferred spacing in y
    var maxSpacingY: [CGFloat] {
        self.indices.map { index in
            // drop last
            guard index < self.count - 1 else { return 0 }
            return self[index].spacing.distance(to: self[index + 1].spacing, along: .vertical)
        }
    }
}
