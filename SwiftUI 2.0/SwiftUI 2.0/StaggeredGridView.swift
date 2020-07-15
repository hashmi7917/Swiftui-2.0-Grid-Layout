//
//  StaggeredGridView.swift
//  SwiftUI 2.0
//
//  Created by Imran Hashmi on 12/07/20.
//

import SwiftUI
import Grid
import SDWebImageSwiftUI

struct StaggeredGridView: View {
    @State var style = StaggeredGridStyle(.vertical, tracks: .min(100), spacing: 5)
    @ObservedObject var randomImages = UnsplashData()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                Grid(randomImages.photoArray, id: \.id) { photo in
                    WebImage(url: URL(string: photo.urls["thumb"]!))
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            randomImages.loadData()
                        }
                }
            }
            
            .animation(.interactiveSpring())
        }.navigationTitle("Staggred Grid in SwiftUI")
        .gridStyle(
            self.style
        )
    }

}

struct StaggeredGridView_Previews: PreviewProvider {
    static var previews: some View {
        StaggeredGridView()
    }
}
