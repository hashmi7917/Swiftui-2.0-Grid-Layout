//
//  ImageDetailView.swift
//  SwiftUI 2.0
//
//  Created by Imran Hashmi on 12/07/20.
//

import SwiftUI

struct ImageDetailView: View {
    
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationBarTitle("Image \(imageName)")
            
    }
}
