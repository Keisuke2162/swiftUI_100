//
//  Lesson11.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/12.
//

// リストを選択して画面遷移

import SwiftUI

struct Lesson11: View {
    let fruits = ["Apple", "Banana", "Orange", "Grape", "Cherry", "Peach"]
    var body: some View {
        NavigationView {
            List(fruits, id: \.self) { fruit in
                NavigationLink(destination: Lesson11Second(fruit: fruit)) {
                    Text(fruit)
                }
            }
            Text("test")
        }
    }
}

struct Lesson11_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11()
    }
}

struct Lesson11Second: View {
    let fruit: String
    
    var body: some View {
        Text(fruit)
    }
}

struct Lesson11Second_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11Second(fruit: "Apple")
    }
}
