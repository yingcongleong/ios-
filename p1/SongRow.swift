//
//  SongRow.swift
//  p1
//
//  Created by User11 on 2021/1/9.
//

import Foundation
import SwiftUI
import Kingfisher

struct SongRow: View{
    var song: Song
    var body: some View{
        HStack{
            KFImage(song.artworkUrl100).renderingMode(.original).resizable().scaledToFit().frame(width: 80, height: 80).clipShape(Circle())
            Text(song.trackName)
            Text(song.artistName)
        }
    }
}
