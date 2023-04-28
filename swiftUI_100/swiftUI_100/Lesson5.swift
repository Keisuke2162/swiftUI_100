//
//  Lesson5.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/28.
//

import SwiftUI

struct Lesson5: View {
    var body: some View {
        HStack {
            IconView()
            IconView()
            IconView()
            IconView()
            IconView()
        }
        .padding(16)
    }
    
    
}

struct IconView: View {
    var body: some View {
        HStack {
            Image("icon")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding(8)
    }
}

struct Lesson5_Previews: PreviewProvider {
    static var previews: some View {
        Lesson5()
    }
}
