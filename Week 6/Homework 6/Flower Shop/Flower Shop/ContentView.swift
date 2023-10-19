//
//  ContentView.swift
//  Flower Shop
//
//  Created by Clarissa Pace on 10/18/23.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedFlowers: [String] = []

    var body: some View {
        NavigationView {
            List {
                ForEach(selectedFlowers, id: \.self) { flower in
                    Text(flower)
                        .font(.title)
                        .foregroundColor(.yellow)
                }
                .onDelete(perform: deleteFlower)
            }
        
            .navigationBarTitle("Let's Go Flower Picking!")
            .navigationBarTitleDisplayMode(.inline)
        
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: addFlower) {
                        Text("Pick a Flower")
                            .foregroundColor(.pink)
                    }
                }
            }
        }
    }

    func deleteFlower(at offsets: IndexSet) {
        selectedFlowers.remove(atOffsets: offsets)
    }

    func addFlower() {
        let flowerEmojis = ["🌸", "🌻", "🌹", "💐", "🌷" , "🪻","🌺", "🌼" ]
        if let randomFlower = flowerEmojis.randomElement() {
            selectedFlowers.append(randomFlower)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

@main
struct FlowerEmojiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
