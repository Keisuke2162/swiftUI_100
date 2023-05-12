//
//  Lesson9.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/12.
//

import SwiftUI

struct Lesson9: View {
    @State var text = "Default"

    var body: some View {
        VStack {
            Text(text)
            Button {
                text = "TEST"
            } label: {
                Text("Button")
            }
        }
    }
}

struct Lesson9_Previews: PreviewProvider {
    static var previews: some View {
        Lesson9()
    }
}
