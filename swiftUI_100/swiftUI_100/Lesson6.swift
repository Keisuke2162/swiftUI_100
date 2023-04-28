//
//  Lesson6.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/28.
//

import SwiftUI

struct Lesson6: View {
    var body: some View {
        NavigationView {
            Image("icon")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .navigationTitle("Image")
        }
    }
}

struct Lesson6_Previews: PreviewProvider {
    static var previews: some View {
        Lesson6()
    }
}
