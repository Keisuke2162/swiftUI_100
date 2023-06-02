//
//  Lesson21ShowMoreView.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/05/26.
//

import SwiftUI

struct Lesson21ShowMoreView: View {
    @State var text: String
    @State private var isFirst = true
    @State private var isFold = false
    @State private var needFoldButton = true
    @State private var textHeight: CGFloat?
    
    var body: some View {
        VStack(.trailing) {
            HStack {
                Text(text)
                    .frame(heigh: textHeight)
                    .background(GeometryReader { geometory in
                        Color.clear.preference(value: SizePrefence.self, value: geometory.size)
                    })
                    .padding()
                    .onPreferenceChange(SizePreference.self) { textSize in
                        if self.isFirst {
                            if textSize.height > 80 {
                                self.textHeight = 80
                                self.isFold = true
                                self.isFirst = false
                            } else {
                                self.needFoldButton = false
                            }
                        }
                    }
            }
            Spacer()
        }
    }
}

fileprivate struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
