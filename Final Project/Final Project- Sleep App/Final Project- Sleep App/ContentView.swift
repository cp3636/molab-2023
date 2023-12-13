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
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .padding()

                Text("Dream Well")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Relax and Unwind")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)

                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    NavigationLink("Count Sheep", destination: CountSheep())
                        .buttonStyle(FirstButtonStyle())
                        .padding(.bottom, 20)

                    NavigationLink("Calming Mix", destination: SecondPage())
                        .buttonStyle(SecondButtonStyle())
                        .padding(.bottom, 20)

                    NavigationLink("Tips", destination: ThirdPage())
                        .buttonStyle(ThirdButtonStyle())
                        .padding(.bottom, 20)

                    NavigationLink("Sleep Log", destination: FourthPage())
                        .buttonStyle(FourthButtonStyle())
                        .padding(.bottom, 20)
                   
                }
                .padding()

                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.02, green: 0, blue: 0.17))
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
            .foregroundColor(.white)
            .fontWeight(.bold)
             .frame(width: 145, height: 141)
             .background(Color(red: 0.35, green: 0.61, blue: 0.91))
             .cornerRadius(8)
             .shadow(
               color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, x: 4, y: 4
             )
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct SecondButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .fontWeight(.bold)
             .frame(width: 145, height: 141)
             .background(Color(red: 0.09, green: 0.40, blue: 0.77))
             .cornerRadius(8)
             .shadow(
               color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, x: 4, y: 4
             )
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct ThirdButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 145, height: 141)
              .background(Color(red: 0.01, green: 0.30, blue: 0.63))
              .cornerRadius(8)
              .shadow(
                color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, x: 4, y: 4
              )
            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}
struct FourthButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 145, height: 141)
            .background(Color(red: 0, green: 0.19, blue: 0.42))
            .cornerRadius(8)
            .shadow(
              color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, x: 4, y: 4
            )

            .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}
