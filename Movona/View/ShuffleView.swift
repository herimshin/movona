//
//  ShuffleView.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import SwiftUI

struct ShuffleView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.isWatched)]) var movie: FetchedResults<Movie>
    
    @State var shuffledMovieTitle = "About Time"
    @State var shuffledMovieGenre = "Romance"
    @State var shuffledMovieIsWatched = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack(spacing: 20) {
                    Text(shuffledMovieTitle)
                        .font(.title)
                    Text(shuffledMovieGenre)
                        .font(.callout)
                    
                    ZStack(alignment: .bottomTrailing) {
                        Rectangle()
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8 * 1.4) // Use geometry.size to adjust size dynamically
                            .foregroundColor(.cyan)
                            .cornerRadius(5)
                        if shuffledMovieIsWatched != true {
                            Image(systemName: "eye")
                                .font(.title2)
                                .padding(30)
                        }
                    }
                }
                
                Button {
                    let shuffledMovie = DataController().getRandomMovie(context: managedObjContext)!
                    shuffledMovieTitle = shuffledMovie.title!
                    shuffledMovieGenre = shuffledMovie.genre!
                    shuffledMovieIsWatched = shuffledMovie.isWatched
                    
                    
                } label: {
                    Label("Shuffle", systemImage: "shuffle")
                }
                .foregroundColor(.black)
                .padding(20)
                .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.black, lineWidth: 2)
                        )
                .padding(.top, 20)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}


struct ShuffleView_Previews: PreviewProvider {
    static var previews: some View {
        ShuffleView()
    }
}
