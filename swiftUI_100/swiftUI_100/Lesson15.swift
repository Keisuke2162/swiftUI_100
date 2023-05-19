//
//  Lesson15.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/19.
//

import SwiftUI

struct Lesson15: View {
    @State var isDisplayAlert: Bool = false

    var body: some View {
        Button {
            isDisplayAlert = true
        } label: {
            Text("Button")
        }.alert(isPresented: $isDisplayAlert) {
            Alert(title: Text("アラートです"),
                  primaryButton: .default(Text("はい")),
                  secondaryButton: .cancel(Text("いいえ")))
        }
    }
}

struct Lesson15_Previews: PreviewProvider {
    static var previews: some View {
        Lesson15()
    }
}
