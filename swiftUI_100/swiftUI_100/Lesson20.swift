//
//  Lesson20.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/26.
//

import SwiftUI

struct Lesson20: View {
    @State var isMovePage = false

    var body: some View {
        NavigationView {
            VStack {
                Button {
                    self.isMovePage = true
                } label: {
                    Text("Move Page")
                }
                NavigationLink(destination: Text("A"), isActive: $isMovePage) {
                    EmptyView()
                }
            }
        }

    }
}

struct Lesson20_Previews: PreviewProvider {
    static var previews: some View {
        Lesson20()
    }
}
