//
//  Lesson13.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/19.
//

// Listのスタイル変更

import SwiftUI

struct Lesson13: View {
    var body: some View {
        List {
            Text("Snorlax")
            Text("Meowth")
            Text("Ditto")
            Text("Vulpix")
            Text("Arcanine")
            Text("Charmander")
        }
        .listStyle(.plain)
    }
}

struct Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13()
    }
}
