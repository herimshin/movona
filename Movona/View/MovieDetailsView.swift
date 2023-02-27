//
//  MovieDetailsView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/27.
//

import SwiftUI

struct MovieDetailsView: View {
    @ObservedObject var movieViewModel = MovieViewModel()
    
    let tappedMovieTitle: String
    let tappedMovieGenre: String
    let tappedMovieisWatched: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text(tappedMovieTitle)
                    .font(.title)
                Text(tappedMovieGenre)
                Rectangle()
                    .frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                    .overlay(
                    Image(systemName: "popcorn.fill")
                        .font(.largeTitle))
                
            }
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(tappedMovieTitle: "About Time", tappedMovieGenre: "Romance", tappedMovieisWatched: true)
    }
}
