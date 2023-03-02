//
//  ListView.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import SwiftUI

struct ListView: View {
    
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.isWatched)]) var movie: FetchedResults<Movie>
        
    @State private var showingAddView = false
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(movie) { movie in
                    ListRowView(movie: movie)
                }
                .onDelete { indexSet in
                        for index in indexSet {
                            let movieToDelete = movie[index]
                            DataController().deleteMovie(movie: movieToDelete, context: managedObjContext)
                        }
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Movie List")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                leading:
                    EditButton()
                    .foregroundColor(.black),
                trailing:
                                    Button(action: {
                showingAddView.toggle()
            }, label: {
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.black)
            }))
            .fullScreenCover(isPresented: $showingAddView) {
                            AddMovieView()
                        }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
