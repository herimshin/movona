//
//  TabBarView.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ShuffleView()
                .tabItem {
                    Image(systemName: "square.stack.fill")
                }
            ListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
