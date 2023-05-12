//
//  Lesson8.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/12.
//

import SwiftUI

struct Lesson8: View {
    var body: some View {
        TabView {
            Text("1")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("2")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("3")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct Lesson8_Previews: PreviewProvider {
    static var previews: some View {
        Lesson8()
    }
}
