//
//  Lesson26.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/16.
//

import SwiftUI

fileprivate struct User: Identifiable {
    let id = UUID()
    let name: String
}

struct Lesson26: View {
    @State private var users: [User] = [
        User(name: "A"),
        User(name: "B"),
        User(name: "C")
    ]
    @State private var showingAlert = false

    var body: some View {
        List(users) { user in
            Button {
                self.showingAlert = true
            } label: {
                Text(user.name)
            }.alert(isPresented: self.$showingAlert) {
                Alert(title: Text(user.name), message: Text(user.name), dismissButton: .default(Text("close")))
            }
        }
        /*
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Button {
                        self.showingAlert = true
                    } label: {
                        Text(user)
                    }.alert(isPresented: self.$showingAlert) {
                        Alert(title: Text(user), dismissButton: .default(Text("close")))
                    }
                }
                .onDelete(perform: delete)
            }
        }
         */
    }

    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct Lesson26_Previews: PreviewProvider {
    static var previews: some View {
        Lesson26()
    }
}
