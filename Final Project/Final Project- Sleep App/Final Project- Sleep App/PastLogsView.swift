//
//  PastLogsView.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
//

import SwiftUI


struct PastLogsView: View {
    let logs: [SleepLog]

    var body: some View {
        List(logs) { log in
            VStack(alignment: .leading) {
                Text("\(log.hoursSlept) hours")
                Text(log.comment)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.35, green: 0.61, blue: 0.91))

                
            }
        }
    }
}
