//
//  Lesson10.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/12.
//

import SwiftUI

struct Lesson10: View {
    var body: some View {
        List {
            Section {
                Text("Snorlax")
                Text("Meowth")
                Text("Ditto")
            } header: {
                Text("First")
            }
            Section {
                Text("Vulpix")
                Text("Arcanine")
                Text("Charmander")
            } header: {
                Text("Second")
            }
        }
    }
}

struct Lesson10_Previews: PreviewProvider {
    static var previews: some View {
        Lesson10()
    }
}
