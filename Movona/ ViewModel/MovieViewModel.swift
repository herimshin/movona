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
        movieArray = [
            MovieModel(title: "About Time", genre: "Romance", isWatched: false),
            MovieModel(title: "Eternal Sunshine", genre: "Romance", isWatched: false),
            MovieModel(title: "Amelie", genre: "Drama", isWatched: false),
            MovieModel(title: "Mononokehime", genre: "Animation", isWatched: true),
            MovieModel(title: "Wednesday", genre: "Comedy", isWatched: false)
            ]
    }
    
    func addMovie(movie: MovieModel) {
        print(movieArray.count)
        movieArray.append(movie)
        print(movieArray.count)

    }
    
    func removeMovie(indexAt : IndexSet){
            movieArray.remove(atOffsets: indexAt)
        }
    
    func shuffleMovie() -> MovieModel {
        let shuffledMovie: MovieModel = movieArray.randomElement()!
        return shuffledMovie
    }
    
}
