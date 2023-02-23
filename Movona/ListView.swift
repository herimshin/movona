//
//  ListView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .overlay(
                            Image(systemName: "popcorn.fill")
                                .foregroundColor(.white)
                        )
                    Text("Hello")
                        .font(.title2)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                } // list row
                
                HStack {
                    Rectangle()
                        .foregroundColor(.red)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .overlay(
                            Image(systemName: "popcorn.fill")
                                .foregroundColor(.white)
                        )
                    Text("Hello")
                        .font(.title2)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                } // list row
                
                HStack {
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                        .overlay(
                            Image(systemName: "popcorn.fill")
                                .foregroundColor(.white)
                        )
                    Text("Hello")
                        .font(.title2)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                } // list row
                
            }
            .listStyle(.plain)
            .navigationTitle("Movie List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "plus")
                        .font(.title2)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
