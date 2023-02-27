//
//  MovieViewModel.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/27.
//

import Foundation

class MovieViewModel: ObservableObject {
    
    // Published wrapper는 @State와 비슷
    @Published var movieArray: [MovieModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getMovie()
    }
    
    func getMovie() {
        let movie0 = MovieModel(title: "About Time", genre: "Romance", isWatched: false)
        let movie1 = MovieModel(title: "Eternal Sunshine", genre: "Romance", isWatched: false)
        let movie2 = MovieModel(title: "Amelie", genre: "Drama", isWatched: false)
        let movie3 = MovieModel(title: "Mononokehime", genre: "Animation", isWatched: true)
        let movie4 = MovieModel(title: "Wednesday", genre: "Comedy", isWatched: false)

        
        movieArray.append(movie0)
        movieArray.append(movie1)
        movieArray.append(movie2)
        movieArray.append(movie3)
        movieArray.append(movie4)

    }
    
    func shuffleMovie() -> MovieModel {
        let shuffledMovie: MovieModel = movieArray.randomElement()!
        return shuffledMovie
    }
    
}
