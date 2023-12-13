//
//  FourthPage.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/3/23.
//

import Foundation
import SwiftUI

struct FourthPage: View {
    @StateObject var viewModel = SleepLogViewModel()
   
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("SLEEP LOG")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()

                NavigationLink(destination: SleepingLogView(viewModel: viewModel)) {
                    Text("Log Sleep")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 0, green: 0.19, blue: 0.42))
                        .cornerRadius(10)
                        .fontWeight(.bold)
                }

                NavigationLink(destination: PastLogsView(logs: viewModel.logs)) {
                    Text("Past Logs")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 0, green: 0.19, blue: 0.42))
                        .cornerRadius(10)
                        .fontWeight(.bold)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(StarsBackgroundView())
          
        }
    }
}
struct StarsBackgroundView: View {
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.0, green: 0.0, blue: 0.2, opacity: 1.0)
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            ForEach(0..<50, id: \.self) { _ in
                StarView()
            }
        }
    }
}

struct StarView: View {
    let position: CGPoint = CGPoint(x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                                    y: CGFloat.random(in: 0...UIScreen.main.bounds.height))
    let size: CGFloat = CGFloat.random(in: 1...4)

    var body: some View {
        Circle()
            .fill(Color.white)
            .frame(width: size, height: size)
            .position(position)
    }
}

extension Color {
    static let darkBlue = Color("darkBlue")
}

struct FourthPage_Previews: PreviewProvider {
    static var previews: some View {
        FourthPage()
    }
}
