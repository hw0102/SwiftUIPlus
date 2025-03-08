// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI


#Preview("AutoSizeLazyVGridForEnum") {
    AutoSizeLazyVGridForEnum(rowSize: 3, rowSpacing: 60, columnSpacing: 30) { (type: TestEnum) in
       ButtonView(selection: type)
    }
  .padding(.horizontal, 10)
}
