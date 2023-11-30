//
//  ContentView.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 11/29/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Image(systemName: "moon.stars.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .padding()

                Text("Sleepy Time")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)

                Text("Relax and Unwind")
                    .font(.title)
                    .foregroundColor(.gray)
                    .padding(.bottom, 20)

                NavigationLink("Count Sheep", destination: CountSheep())
                    .buttonStyle(FirstButtonStyle())

                NavigationLink("Second Page", destination: SecondPage())
                    .buttonStyle(SecondButtonStyle())

                NavigationLink("Third Page", destination: ThirdPage())
                    .buttonStyle(ThirdButtonStyle())

                Spacer()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(10)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct SecondButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(10)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct ThirdButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(10)
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}
