//
//  Lesson22.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/02.
//

import SwiftUI

struct Lesson22: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
            Text("Hello, ")
                .foregroundColor(.blue)
            + Text("World!")
                .foregroundColor(.yellow)
        }
    }
}

struct Lesson22_Previews: PreviewProvider {
    static var previews: some View {
        Lesson22()
    }
}
