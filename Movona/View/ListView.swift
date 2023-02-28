//
//  ListView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

struct ListView: View {
    
    @State var showAddView : Bool = false
    @EnvironmentObject var movieViewModel: MovieViewModel
    
     
    var body: some View {
        NavigationStack {
            List {
                ForEach(movieViewModel.movieArray) { movie in
                    NavigationLink {
                        MovieDetailsView(tappedMovieTitle: movie.title, tappedMovieGenre: movie.genre, tappedMovieisWatched: movie.isWatched)

                    } label: {
                        ListRowView(movie: movie)
                    }

                    
                }
                .onDelete(perform: {
                                movieViewModel.deleteMovie(indexAt: $0)
                            })
                .onMove(perform: movieViewModel.moveMovie(from:to:))
                
            }
            .listStyle(.plain)
            .navigationTitle("Movie List")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button {
                    showAddView.toggle()
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.title2)
                    
                }
                    .fullScreenCover(isPresented: $showAddView) {
                        MovieAddView()
                        
                    })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
