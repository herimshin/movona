//
//  ListRow.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/27.
//

import SwiftUI

struct ListRowView: View {
    
    let movie: MovieModel
    
    var body: some View {
        HStack {
            Rectangle()
                .opacity(movie.isWatched ? 1 : 0.7)
                .foregroundColor(.blue)
                .frame(width: 60, height: 60)
                .cornerRadius(5)
                .overlay(
                    Image(systemName: "popcorn.fill")
                        .foregroundColor(.white)
                )
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.title2)
                    .foregroundColor(movie.isWatched ? .primary : .secondary)
                Text(movie.genre)
                    .font(.callout)
                    .foregroundColor(.gray)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
            Spacer()
            
        }
        
        // Movie list row 1
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var movieRow1 = MovieModel(title: "A", genre: "Horror", isWatched: true)
    static var movieRow2 = MovieModel(title: "B", genre: "Comedy", isWatched: false)

    static var previews: some View {
            ListRowView(movie: movieRow1)
            .previewLayout(.sizeThatFits)
            ListRowView(movie: movieRow2)
            .previewLayout(.sizeThatFits)


    }
}
