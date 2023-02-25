//
//  ListView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

struct ListView: View {
    
    @State var showAddView : Bool = false
    @State var movies: [Movie] = [
        Movie(title: "About Time", genre: "Romance", isWatched: true),
        Movie(title: "Amélie", genre: "Drama", isWatched: true),
        Movie(title: "Mononokehime", genre: "Animation", isWatched: false),
        Movie(title: "Grand Budapest Hotel", genre: "Drama", isWatched: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(movies) { movie in
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
