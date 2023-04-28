//
//  Lesson7.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/28.
//

import SwiftUI

struct Lesson7: View {
    var items = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @State private var selectedItem = 0

    var body: some View {
        Picker("Item", selection: $selectedItem) {
            ForEach(0 ..< items.count) {
                Text(self.items[$0])
            }.pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct Lesson7_Previews: PreviewProvider {
    static var previews: some View {
        Lesson7()
    }
}
