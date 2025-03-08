//
//  ButtonView.swift
//  SwiftUIPlus
//
//  Created by Hello World on 3/8/25.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    ButtonView(text: "Hello")
}
