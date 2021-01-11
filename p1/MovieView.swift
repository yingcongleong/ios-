//
//  MovieView.swift
//  p1
//
//  Created by User11 on 2021/1/11.
//

import Foundation
import SwiftUI

struct MovieView: View{
    @State private var movies = [Movie]()
    @State private var showMovieContent = false
    @Binding var overview: String
    @Binding var title: String
    
    func fetchMovies() {
        let urlStr = "https://api.themoviedb.org/3/discover/movie?api_key=2452f7496724e17ca550dc46c984825f&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1"
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let data = data,
                   let movieResults = try?
                    decoder.decode(MovieResults.self, from: data) {
                    movies = movieResults.results
                    
                    print(movieResults.results)
                    
                }
            }.resume()
        }
        else{
            print("error")
        }
    }
    
    
    var body: some View{
        VStack{
            Text("Popular Movies").bold()
            List(movies.indices, id: \.self) { (index)  in
                MovieRow(movie: self.movies[index]).onTapGesture {
                    self.title = self.movies[index].title
                    self.overview = self.movies[index].overview
                    showMovieContent = true
                }.sheet(isPresented: $showMovieContent, content: { MovieContent(title: title, overview: overview)})
            }.onAppear{(self.fetchMovies())}
        }
    }
}
