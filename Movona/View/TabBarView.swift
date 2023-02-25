//
//  TabView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }

                    ListView()
                        .tabItem {
                            Label("List", systemImage: "list.dash")
                        }
                }    }
}
