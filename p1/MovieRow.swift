//
//  MovieRow.swift
//  p1
//
//  Created by User11 on 2021/1/11.
//

import Foundation
import SwiftUI

struct MovieRow: View{
    var movie: Movie
    var body: some View{
        
        VStack(alignment: .leading){
            Text(movie.title)
            
            Text(movie.release_date)
        }
    }
}
