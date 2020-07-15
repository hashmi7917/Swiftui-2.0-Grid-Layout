//
//  ContentView.swift
//  SwiftUI 2.0
//
//  Created by Imran Hashmi on 02/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            StaggeredGridView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
