//
//  AddFlowerView.swift
//  Flower Shop
//
//  Created by Clarissa Pace on 10/18/23.
//
//
//import SwiftUI
//
//struct AddFlowerView: View {
//    @Binding var selectedFlowers: [Flower]
//    @State private var flowerName = ""
//    @State private var flowerPrice = ""
//    @State private var selectedEmoji = "🌸"
//    
//    var body: some View {
//        Form {
//            Section(header: Text("Add a Flower")) {
//                TextField("Name", text: $flowerName)
//                TextField("Price", text: $flowerPrice)
//                
//                Picker("Select Flower Emoji", selection: $selectedEmoji) {
//                    Text("🌸").tag("🌸")
//                    Text("🌻").tag("🌻")
//                    Text("🌹").tag("🌹")
//                    Text("💐").tag("💐")
//                }
//                .pickerStyle(SegmentedPickerStyle())
//            }
//            
//            Button(action: addFlower) {
//                Text("Add")
//            }
//        }
//        .navigationTitle("Add Flower")
//    }
//    
//    mutating func addFlower() {
//        guard let price = Double(flowerPrice),
//              !flowerName.isEmpty else { return }
//        
//        let flower = Flower(name: flowerName, price: price, emoji: selectedEmoji)
//        selectedFlowers.append(flower)
//        flowerName = ""
//        flowerPrice = ""
//        selectedEmoji = "🌸"
//    }
//}
