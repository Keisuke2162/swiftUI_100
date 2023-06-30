//
//  Lesson29.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/06/30.
//

import SwiftUI

struct Lesson29: View {
    @State private var selectedHour = 8
    @State private var selectedMinute = 30

    var body: some View {
        GeometryReader { geometry in
            HStack {
                Picker(selection: self.$selectedHour) {
                    ForEach(0 ..< 24) {
                        Text("\($0)")
                    }
                } label: {
                    EmptyView()
                }
                .pickerStyle(.wheel)
                .labelsHidden()
                .frame(width: geometry.size.width / 2, height: geometry.size.height)
                .clipped()

                Picker(selection: self.$selectedMinute) {
                    ForEach(0 ..< 60) {
                        Text("\($0)")
                    }
                } label: {
                    EmptyView()
                }
                .pickerStyle(.wheel)
                .labelsHidden()
                .frame(width: geometry.size.width / 2, height: geometry.size.height)
                .clipped()
            }
        }.padding()
    }
}

struct Lesson29_Previews: PreviewProvider {
    static var previews: some View {
        Lesson29()
    }
}
