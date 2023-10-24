//
//  CoolButton.swift
//  WetterApp
//
//  Created by Muhammed Halid Kutsal on 17.10.23.
//

import SwiftUI




struct CoolButton: View {
    var body: some View {
        Button("Cool Button"){}
            .buttonStyle(GrowingButton()).padding(.top)
    }
}

#Preview {
    CoolButton()
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.black.gradient)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


