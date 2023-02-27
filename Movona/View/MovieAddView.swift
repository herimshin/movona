//
//  MovieAdd.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/24.
//

import SwiftUI

struct MovieAddView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var movieViewModel = MovieViewModel()
    
    @State var movieTitle: String = ""
    @State var movieGenre: String = ""
    @State var movieisLiked: Bool = false
    
        
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $movieTitle)
                TextField("Genre", text: $movieGenre)
                Toggle(isOn: $movieisLiked) {
                            Text("Have you watched it already?")
                        }
            }
            .navigationTitle("Add Movie")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems (leading: Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .font(.title2)
                }
            )
            .navigationBarItems(trailing:
                                    Button (action: {
                movieViewModel.addMovie(movie: .init(title: movieTitle, genre: movieGenre, isWatched: movieisLiked))
                presentationMode.wrappedValue.dismiss()

            }, label: {
                Text("Save")
            }).disabled(movieTitle.isEmpty || movieGenre.isEmpty)
            )
        }
    }
}

struct MovieAddView_Previews: PreviewProvider {
    static var previews: some View {
        MovieAddView(movieViewModel: MovieViewModel())
    }
}
