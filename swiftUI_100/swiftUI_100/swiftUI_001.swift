//
//  swiftUI_001.swift
//  swiftUI_100
//
//  Created by Keisuke Ueda on 2023/04/21.
//

import SwiftUI

struct swiftUI_001: View {
    var body: some View {
        Image("icon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 200)
            .background(Color.red)
    }
}

struct swiftUI_001_Previews: PreviewProvider {
    static var previews: some View {
        swiftUI_001()
    }
}
