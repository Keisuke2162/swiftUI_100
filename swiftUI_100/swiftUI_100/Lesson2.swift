//
//  Lesson2.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/28.
//

import SwiftUI

struct Lesson2: View {
    var body: some View {
        Image("icon")
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
            .clipped()
    }
}

struct Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Lesson2()
    }
}
