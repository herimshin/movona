//
//  HomeView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI
import CardStack

struct HomeView: View {
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Which movie for tonight?")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                
                VStack(spacing: 4) {
                    Text("Movie Title")
                        .font(.title2)
                    Text("1999")
                    Text("Director's name")
                } // movie info
                
                HStack {
                    Spacer()
                    Rectangle()
                        .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.6 * 1.4)
                        .cornerRadius(20)
                        .padding(20)
                    Spacer()
                } // movie image
//                CardStack(items) { item in
//                    RoundedRectangle(cornerRadius: 20, style: .continuous)
//                        .fill(item.color)
//                        .frame(height: 400)
//                }
                
                Spacer()
                
                Button {
                    print("Shuffle")
                } label: {
                    Label("Shuffle", systemImage: "shuffle")
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
