//
//  SwiftUIView.swift
//  SwiftUIPLus
//
//  Created by Hello World on 3/6/25.
//

import SwiftUI


fileprivate struct ButtonView: View {
    let selection: TestEnum
    
    var body: some View {
        Button {
            print(selection.description)
        } label: {
            if #available(iOS 15.0, *) {
                Text(selection.description)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.thinMaterial, in: .rect(cornerRadius: 8))
            } else {
                // Fallback on earlier versions
                Text(selection.description)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
        }
    }
}


struct TestView: View {
    var body: some View {
        AutoSizeLazyVGridForEnum(rowSize: 3) { (type: TestEnum) in
            //Text(type.description)
            ButtonView(selection: type)
        }
    }
}

#Preview {
    TestView()
}
