//
//  Lesson12.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/19.
//

import SwiftUI

struct Lesson12: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Lesson12SecondPage(text: "2")) {
                Text("Next Page")
            }
        }
    }
}

struct Lesson12_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12()
    }
}

struct Lesson12SecondPage: View {
    let text: String
    
    var body: some View {
        Text(text)
            .navigationBarBackButtonHidden()
    }
}

struct Lesson12SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12SecondPage(text: "Test")
    }
}
