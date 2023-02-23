//
//  MovonaApp.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

@main
struct MovonaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}
