//
//  Lesson25.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/16.
//

import SwiftUI

struct Lesson25: View {
    @State private var users = ["A", "B", "C"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
        }
    }

    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

struct Lesson25_Previews: PreviewProvider {
    static var previews: some View {
        Lesson25()
    }
}
