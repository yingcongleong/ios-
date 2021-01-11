//
//  MovieResult.swift
//  p1
//
//  Created by User11 on 2021/1/11.
//

import Foundation
import SwiftUI

struct MovieResults: Codable{
    var results: [Movie]
}

struct Movie: Codable{
    var title: String
    var overview: String
    var release_date: String
}
