//
//  Extensions.swift
//  SwiftUIPLus
//
//  Created by Hello World on 3/6/25.
//

import Foundation

extension Collection where Index == Int {
    // make an array into groups of X arrays. Last element can be less than X.
    func chunk(rowSize: Int) -> [[Element]] {
        stride(from: 0, to: count, by: rowSize).map { index in
            
            let endIndex = Swift.min(index + rowSize - 1, self.count - 1)
            
            return Array(self[index...endIndex])
        }
    }
}

// allow for id:\.self
extension Array where Element: Hashable {
    var hashValue: Int {
        var hasher = Hasher()
        self.forEach { hasher.combine($0) }
        return hasher.finalize()
    }
}
