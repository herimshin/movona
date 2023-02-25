//
//  MovieObject.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/25.
//

import Foundation

struct Movie: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let genre: String
    let isWatched: Bool
}
