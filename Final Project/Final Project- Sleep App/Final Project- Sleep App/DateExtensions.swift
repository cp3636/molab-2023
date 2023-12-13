//
//  DateExtensions.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
//

import Foundation

extension Date {
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
}
