//
//  ViewController.swift
//  p1
//
//  Created by User11 on 2021/1/9.
//

import Foundation
import SwiftUI
import AVKit
import SafariServices

struct PlayerView: UIViewControllerRepresentable {
    var urlString = ""
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = AVPlayer()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        if let url = URL(string: urlString) {
            let item = AVPlayerItem(url: url)
            uiViewController.player?.replaceCurrentItem(with: item)
        }
        
    }
    
    typealias UIViewControllerType = AVPlayerViewController
    let url : URL
    
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(url: URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/4d/80/bb/4d80bb0d-5b66-7c09-056c-4dbae131e0c4/mzaf_6323814923022681502.plus.aac.p.m4a")!)
    }
}
