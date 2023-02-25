//
//  MovieAdd.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/24.
//

import SwiftUI

struct MovieAddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var movieTitle: String = ""
    
        
    var body: some View {
        NavigationStack {
            Form {
                TextField("Movie Title", text: $movieTitle)
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
        }
    }
}

struct MovieAddView_Previews: PreviewProvider {
    static var previews: some View {
        MovieAddView()
    }
}
