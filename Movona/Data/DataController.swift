//
//  DataController.swift
//  Movona
//
//  Created by 신혜림 on 2023/03/02.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    // Responsible for preparing a model
    let container = NSPersistentContainer(name: "Movona")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load data in DataController \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved successfully.")
        } catch {
            // Handle errors in our database
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
    func addMovie(title: String, genre: String, isWatched: Bool, context: NSManagedObjectContext) {
        let movie = Movie(context: context)
        movie.id = UUID()
        movie.title = title
        movie.genre = genre
        movie.isWatched = isWatched
        
        save(context: context)
    }
    
    func getRandomMovie(context: NSManagedObjectContext) -> Movie? {
        let request: NSFetchRequest<Movie> = Movie.fetchRequest()
        
        do {
            let movies = try context.fetch(request)
            let count = movies.count
            if count > 0 {
                let randomIndex = Int.random(in: 0..<count)
                return movies[randomIndex]
            }
        } catch {
            print("Failed to fetch movies: \(error.localizedDescription)")
        }
        
        return nil
    }
    
    func deleteMovie(movie: Movie, context: NSManagedObjectContext) {
        context.delete(movie)
        save(context: context)
    }
    
    

    
}
