//
//  SleepLog.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
//Represents each sleep log entry
import Foundation

struct SleepLog: Codable, Identifiable {
    var id = UUID()
    var hoursSlept: Int
    var comment: String
}
