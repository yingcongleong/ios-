//
//  SongView.swift
//  p1
//
//  Created by User11 on 2021/1/8.
//

import SwiftUI
import Foundation
import UIKit

struct SongView: View {
    @State private var songs = [Song]()
    @State private var showMusicContent = false
    @Binding var songname: String
    @Binding var previewurl: String
    @Binding var imgurl: String
    
    func fetchSongs() {
        
        let urlStr = "https://itunes.apple.com/search?term=taylorswift&media=music"
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response , error) in
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let data = data,
                   let songResults = try?
                    decoder.decode(SongResults.self, from: data) {
                    songs = songResults.results
                    
                    print(songResults.results)
                    
                }
            }.resume()
        }
        else{
            print("error")
        }
    }
    
    
    var body: some View{
        
        List(songs.indices, id: \.self) { (index)  in
            SongRow(song: self.songs[index]).onTapGesture {
                self.imgurl = self.songs[index].artworkUrl100.absoluteString
                self.songname=self.songs[index].trackName
                self.previewurl=self.songs[index].previewUrl.absoluteString
                print(self.songs[index].trackName)
                showMusicContent = true
            }.sheet(isPresented: $showMusicContent, content: { MusicContent(previewUrl: previewurl, songname: songname, imgurl: imgurl)})
        }.onAppear{(self.fetchSongs())}
    }



}
