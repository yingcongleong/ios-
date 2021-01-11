//
//  SongResult.swift
//  p1
//
//  Created by User11 on 2021/1/8.
//

import Foundation
import SwiftUI

struct SongResults: Codable{
    var resultCount: Int
    var results: [Song]
}

struct Song: Codable{
    var artistName: String
    var trackName: String
    var previewUrl: URL
    var artworkUrl60: URL
    var artworkUrl100: URL
}
