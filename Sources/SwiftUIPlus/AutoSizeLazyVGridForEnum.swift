//
//  AutoSizeLazyVGridForEnum.swift
//  SwiftUIPLus
//
//  Created by Hello World on 3/6/25.
//

import SwiftUI

struct AutoSizeLazyVGridForEnum<T: CaseIterable & Hashable, Content: View>: View where T.AllCases.Index == Int {
    
    let rowSize: Int
    
    /// amount of spacing between each row
    var rowSpacing: CGFloat = 10
    
    /// amount of spacing between each column
    var columnSpacing: CGFloat = 10
    
    @ViewBuilder let content: (T) -> Content
    
    var body: some View {
        VStack(spacing: rowSpacing) {
            ForEach(T.allCases.chunk(rowSize: rowSize), id: \.self) { caseGroup in
                HStack(spacing: columnSpacing) {
                    ForEach(caseGroup, id: \.self) { type in
                        content(type)
                    }
                }
            }
        }
    }
}
