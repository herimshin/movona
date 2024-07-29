//
//  AddMovieView.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import SwiftUI

struct AddMovieView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
        
    @State private var title = ""
    @State private var genre = ""
    @State private var isWatched = false
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                TextField("Genre", text: $genre)
                Toggle("I have already watched this movie before", isOn: $isWatched)
            }
            .navigationTitle("Add new movie")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(leading:
                                    Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
            }),
                                trailing:
                                    Button(action: {
                DataController().addMovie(title: title, genre: genre, isWatched: isWatched, context: managedObjContext)
                                            dismiss()
            }, label: {
                Text("Save")
            }))
        }
    }
}

struct AddMovieView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieView()
    }
}
