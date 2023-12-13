//
//  SleepDataManager.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.

import Foundation



class SleepDataManager {
    static let shared = SleepDataManager()
    private let fileURL: URL

    init() {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        fileURL = documentsDirectory.appendingPathComponent("sleepLogs").appendingPathExtension("json")
    }

    func saveLogs(_ logs: [SleepLog]) {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(logs)
            try data.write(to: fileURL)
        } catch {
            print("Error saving logs: \(error)")
        }
    }

    func loadLogs() -> [SleepLog] {
        do {
            let data = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            return try decoder.decode([SleepLog].self, from: data)
        } catch {
            print("Error loading logs: \(error)")
            return []
        }
    }
}
