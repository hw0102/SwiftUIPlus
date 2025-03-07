//
//  SwiftUIView.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/6/25.
//

import SwiftUI




struct TestView: View {
    var body: some View {
        AutoSizeLazyVGridForEnum(rowSize: 3, rowSpacing: 60, columnSpacing: 30) { (type: TestEnum) in
            //Text(type.description)
           // ButtonView(selection: type)
            Text(type.description)
        }
    }
}

#Preview {
    TestView()
        .padding(.horizontal, 10)
}
