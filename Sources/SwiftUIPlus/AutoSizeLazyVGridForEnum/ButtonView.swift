//
//  ButtonView.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/6/25.
//

import SwiftUI

struct ButtonView: View {
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

#Preview {
    ButtonView("Hello")
}
