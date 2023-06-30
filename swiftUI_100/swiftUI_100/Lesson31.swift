//
//  Lesson31.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/30.
//

import SwiftUI

struct Lesson31: View {
    @State private var isShowSecondView = false

    var body: some View {
        Button {
            self.isShowSecondView = true
        } label: {
            Text("開く")
        }
        .fullScreenCover(isPresented: $isShowSecondView) {
            Lesson31SecondView()
        }
    }
}

struct Lesson31SecondView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("閉じる")
        }
    }
}

struct Lesson31_Previews: PreviewProvider {
    static var previews: some View {
        Lesson31()
    }
}
