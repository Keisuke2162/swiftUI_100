//
//  Lesson27.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/23.
//

import SwiftUI

struct Lesson27: View, MyProtocol {
    @State var text: String = "Text"
    var body: some View {
        NavigationView {
            VStack {
                Text(text)
                NavigationLink {
                    SecondView(delegate: self)
                } label: {
                    Text("２んd")
                }

            }
        }
    }
    
    func changeText() {
        text = "Text2"
    }
}

protocol MyProtocol {
    func changeText()
}

struct SecondView: View {
    var delegate: MyProtocol
    var body: some View {
        Button(action: {
            self.delegate.changeText()
        }) {
            Text("ChangeText")
        }
    }
}

struct Lesson27_Previews: PreviewProvider {
    static var previews: some View {
        Lesson27()
    }
}
