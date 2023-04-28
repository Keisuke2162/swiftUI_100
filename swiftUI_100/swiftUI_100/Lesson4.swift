//
//  Lesson4.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/28.
//

import SwiftUI

struct Lesson4: View {
    var body: some View {
        Image("icon")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(
                RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 1)
            )
    }
}

struct Lesson4_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4()
    }
}