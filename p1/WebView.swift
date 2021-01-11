//
//  WebView.swift
//  p1
//
//  Created by User11 on 2021/1/9.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString : String
    func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
           
            return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
       
    }
    
    typealias UIViewType = WKWebView
    
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://music.apple.com/us/artist/amg/1460288546?uo=4")
    }
}
