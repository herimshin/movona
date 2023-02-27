//
//  ListView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

struct ListView: View {
    
    @State var showAddView : Bool = false
    @StateObject var movieViewModel = MovieViewModel()
     
    var body: some View {
        NavigationStack {
            List {
                ForEach(movieViewModel.movieArray) { movie in
                    NavigationLink {
                        MovieDetailsView(tappedMovieTitle: movie.title, tappedMovieGenre: movie.genre, tappedMovieisWatched: movie.isWatched)
                    } label: {
                        HStack {
                            Rectangle()
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
                                Text(movie.genre)
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                            Spacer()
                            
                            if movie.isWatched == true {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.blue)
                            
                            } // isWatched
                            
                        }
                        
                        // Movie list row 1
                    }

                    
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("Movie List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing: Button {
                    showAddView.toggle()
                    print("showAddview is toggled", showAddView)
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                    
                }
                    .fullScreenCover(isPresented: $showAddView) {
                        MovieAddView()
                        
                    }
            )
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
