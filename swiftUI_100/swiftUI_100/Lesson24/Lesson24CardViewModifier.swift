//
//  Lesson24CardViewModifier.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/09.
//

import SwiftUI

struct Lesson24CardViewModifier: ViewModifier {
    let color: Color
    let radius: CGFloat
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(8)
    }
}

extension View {
    func card(color: Color = Color.gray.opacity(0.4), radius: CGFloat = 8) -> some View {
        self.modifier(Lesson24CardViewModifier(color: color, radius: radius))
    }
}
struct Lesson24CardViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("TEST")
            .card()
            .previewLayout(.sizeThatFits)
    }
}
