//
//  Third Page.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 11/29/23.
// Reference: https://www.hackingwithswift.com/forums/swiftui/changing-text-when-button-is-pressed/17112, https://developer.apple.com/tutorials/swiftui/animating-views-and-transitions,
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-new-view-using-sheets



import Foundation
import SwiftUI

struct ThirdPage: View {
    @State private var showingTipsPage = false

    var body: some View {
        NavigationView {
            VStack {
                Text("DREAM WELL")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                    .foregroundColor(.blue)

                Button(action: { self.showingTipsPage = true }) {
                    VStack {
                        Image(systemName: "lightbulb.fill")
                        Text("Tips")
                    }
                    .frame(minWidth: 0, maxWidth: 300, minHeight: 90)
                    .background(Color(red: 0.01, green: 0.30, blue: 0.63))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .sheet(isPresented: $showingTipsPage) {
                    TipsPage()
                        .background(Color(red: 0.02, green: 0, blue: 0.17))
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(Color(red: 0.02, green: 0, blue: 0.17))
        .edgesIgnoringSafeArea(.all)
    }
}

struct TipsPage: View {
    @State private var tip = "A Tip Will Appear Here!"
    let tips = [
        "Limit screen time an hour before bed.",
        "Practice deep breathing or meditation.",
        "Listen to calming music or white noise.",
       " Read a book under soft lighting.",
        "Keep the bedroom cool, dark, and quiet.",
       " Try a warm bath or shower before bed.",
        "Drink a warm, non-caffeinated beverage like herbal tea.",
       "Do light stretches or yoga to relax muscles.",
        "Write down your thoughts to clear your mind.",
       " Stick to a consistent sleep schedule.",
        "Get regular physical activity, but not right before bedtime.",
       "Avoid heavy meals, caffeine, and alcohol before bed.",
        "Limit daytime naps to 20-30 minutes.",
        "Get exposure to natural light during the day.",
        "Manage stress through organization and prioritization.",
        "Avoid clock-watching at night.",
       " Keep electronic devices out of the bedroom.",
      
    ]

    var body: some View {
        VStack(spacing: 20) {
            Text("Sleeping Tips")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text(tip)
                .foregroundColor(.white)
                .padding()
            Button(action: generateTip) {
                Text("New Tip")
                    .fontWeight(.semibold)
                    .frame(minWidth:200, maxWidth: 200)
                    .padding()
                    .background(Color(red: 0.01, green: 0.30, blue: 0.63))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
         
        }
        .padding()
      
        .onAppear(perform: generateTip)
    }

    func generateTip() {
        tip = tips.randomElement() ?? "Always get enough sleep!"
    }
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}

