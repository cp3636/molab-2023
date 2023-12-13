//
//  SecondPage.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 11/29/23.
//
import Foundation
import SwiftUI

struct SecondPage: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    let soundNames = ["Distance", "Clarity", "Dreaming", "NightTime", "OrangeHues", "Snooze", "Stardust", "Wind", "Ylang Ylang"]
    var soundPlayer = SoundPlayer()

    let blueShades: [Color] = [
        Color.blue,
        Color(red: 0.0, green: 0.3, blue: 0.8),
        Color(red: 0.2, green: 0.4, blue: 1.0)
    ]

    var body: some View {
        VStack {
            Spacer(minLength: 150)

            Text("Calming Mix")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
                .foregroundColor(.white)
                .padding(.bottom)
      

            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(soundNames.indices, id: \.self) { index in
                        Button(action: {
                            soundPlayer.playOrStopSound(named: soundNames[index])
                        }) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(blueShades[index % blueShades.count]) //
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Text(soundNames[index])
                                        .foregroundColor(.white)
                                        .font(.headline)
                                )
                        }
                    }
                }
                .padding()
            }
        }
        .background(Color(red: 0.02, green: 0, blue: 0.17))
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
