//
//  ListRowView.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import SwiftUI

struct ListRowView: View {
    @ObservedObject var movie: Movie

    
    
    var body: some View {
        HStack {
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                    .padding(.horizontal, 10)
                    .foregroundColor(.yellow)
                    .overlay(
                    Image(systemName: "popcorn")
                        .font(.title2))
                VStack(alignment: .leading) {
                    Text(movie.title ?? "")
                        .font(.headline)
                    Text(movie.genre ?? "")
                        .font(.subheadline)
                    
                }
            }
            Spacer()
            if movie.isWatched {
                Image(systemName: "eye.fill")
                    .foregroundColor(.gray)
            }
            
        }
        .padding(.vertical, 8)
        .contentShape(Rectangle())
    }
}

struct ListRowView_Previews: PreviewProvider {
    static let context = DataController().container.viewContext
        static var previews: some View {
            let movie = Movie(context: context)
            movie.title = "About Time"
            movie.genre = "Romance"
            movie.isWatched = false
            
            return ListRowView(movie: movie)
                .previewLayout(.sizeThatFits)
        }
}
