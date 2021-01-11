//
//  MusicContent.swift
//  p1
//
//  Created by User11 on 2021/1/9.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation
import Kingfisher


struct MusicContent: View{
    var previewUrl: String
    var songname: String
    var imgurl: String
    @State private var showSinger = false
    
    var body: some View{
        let url = URL(string: imgurl)
        VStack{
            KFImage(url).renderingMode(.original).resizable().scaledToFit().frame(width: 100, height: 100).onLongPressGesture{
                showSinger = true
            }.sheet(isPresented: $showSinger, content: {
                SingerView()
            })
            Text(songname)
            WebView(urlString: previewUrl)
        }
    }
    
    
}
