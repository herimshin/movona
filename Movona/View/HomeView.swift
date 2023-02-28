//
//  HomeView.swift
//  Movona
//
//  Created by 신혜림 on 2023/02/23.
//

import SwiftUI
import CardStack

struct HomeView: View {
    @EnvironmentObject var movieViewModel: MovieViewModel
    @State var shuffledMovieTitle = "About Time"
    @State var shuffledMovieGenre = "Romance"
    @State var isChosen = false
    

    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Which movie for tonight?")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                
                VStack(spacing: 4) {
                    Text("\(shuffledMovieTitle)")
                        .font(.title2)
                    Text("\(shuffledMovieGenre)")
                } // movie info
                
            
                HStack {
                    Spacer()
                    movieImageCard
                        .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.6 * 1.4)

                    Spacer()
                } // movie image
//                CardStack(items) { item in
//                    RoundedRectangle(cornerRadius: 20, style: .continuous)
//                        .fill(item.color)
//                        .frame(height: 400)
//                }
                
                Spacer()
                
                HStack {
                    Button {
                        let shuffledResult = movieViewModel.shuffleMovie()
                        shuffledMovieTitle = shuffledResult.title
                        shuffledMovieGenre = shuffledResult.genre
                    } label: {
                        Label("Shuffle", systemImage: "shuffle")
                    }
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.1)
                    .padding(10)
                    .foregroundColor(.white)
                    .background(movieViewModel.movieArray.isEmpty ? .gray : .blue)
                    .cornerRadius(10)
                    .disabled(movieViewModel.movieArray.isEmpty)
                    
                    Button {
                        isChosen.toggle()
                        
                    } label: {
                        Label("Choose", systemImage: "popcorn.fill")
                    }
                    .disabled(movieViewModel.movieArray.isEmpty)
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.width * 0.1)
                    .padding(10)
                    .foregroundColor(.white)
                    .background(movieViewModel.movieArray.isEmpty ? .gray : .pink)
                    .cornerRadius(10)
                    .alert("Enjoy your movie!", isPresented: $isChosen) {
                                Button("OK", role: .cancel) { }
                            }
                    
                }
                
                    
                Spacer()
            }
        }
    }
    
    var movieImageCard: some View {
        Rectangle()
            .cornerRadius(20)
            .padding(20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
