//
//  MovonaApp.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

@main
struct MovonaApp: App {
    @StateObject private var dataController = DataController()


    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(\.managedObjectContext,
                              dataController.container.viewContext)
        }
    }
}
