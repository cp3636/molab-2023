//
//  ContentView.swift
//  Basic Nav View
//
//  Created by Clarissa Pace on 10/5/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                    
                NavigationLink {
                    GraphicsView()
                } label: {
                    Text("Graphic View")
                        .foregroundColor(.purple)

            
                }
                NavigationLink {
                    PlayAudioUrlView()
                } label: {
                
                    Text("Sounds")
                        .foregroundColor(.cyan)
    
                 
                }
            }
        }
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

