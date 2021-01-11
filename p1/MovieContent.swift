//
//  MovieContent.swift
//  p1
//
//  Created by User11 on 2021/1/11.
//

import Foundation
import SwiftUI

struct MovieContent: View{
    var title: String
    var overview: String
    var body: some View{
        VStack(alignment: .leading) {
            Text(title)
            Text("Overview:")
            Text(overview)
        }
        
    }
}
