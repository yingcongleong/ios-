//
//  ContentView.swift
//  p1
//
//  Created by User11 on 2021/1/8.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var songname = "Shake It Off"
    @State var previewurl = "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/4d/80/bb/4d80bb0d-5b66-7c09-056c-4dbae131e0c4/mzaf_6323814923022681502.plus.aac.p.m4a"
    @State var imgurl = "https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/9c/91/83/9c918303-e0a4-2d4b-97d6-f986b9fba604/source/100x100bb.jpg"
    @State var title = "Wonder Woman 1984"
    @State var overview = "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s and finds a formidable foe by the name of the Cheetah."
    var body: some View{
        TabView{
            SongView(songname: $songname, previewurl: $previewurl, imgurl: $imgurl).tabItem{
                Image(systemName: "music.note")
                Text("Song")
            }
            SingerView().tabItem {
                Image(systemName: "person")
                Text("Taylor Swift")
            }
            MovieView(overview: $overview, title: $title).tabItem{
                Image(systemName: "film")
                Text("Popular Movie")
            }
        }
    }
}


