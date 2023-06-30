//
//  Lesson30.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/30.
//

import SwiftUI

struct Lesson30: View {
    @State private var isShowSecondView = false

    var body: some View {
        Button {
            self.isShowSecondView = true
        } label: {
            Text("開く")
        }
        .sheet(isPresented: $isShowSecondView) {
            Lesson30SecondView()
        }

    }
}

struct Lesson30SecondView: View {
    var body: some View {
        Text("SecondView")
    }
}

struct Lesson30_Previews: PreviewProvider {
    static var previews: some View {
        Lesson30()
    }
}
