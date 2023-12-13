//
//  SleepingLogView.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
//

import SwiftUI

struct SleepingLogView: View {
    @ObservedObject var viewModel: SleepLogViewModel
    
    var body: some View {
        VStack {
            TextField("Hours Slept", value: $viewModel.hoursSlept, formatter: NumberFormatter())
                .keyboardType(.numberPad)
                .padding()
                .fontWeight(.bold)
                .background(Color.white)
                .cornerRadius(5)
            TextField("Comment", text: $viewModel.comment)
                .padding()
                .fontWeight(.bold)
                .background(Color.white)
                .cornerRadius(5)
            Button("Save Log") {
                viewModel.addLog()
            }
            .padding()
            .background(Color(red: 0, green: 0.19, blue: 0.42))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        .padding()
        .background(Color(red: 0, green: 0.19, blue: 0.42))
        .edgesIgnoringSafeArea(.all)
    }
    
    
}

   
    
