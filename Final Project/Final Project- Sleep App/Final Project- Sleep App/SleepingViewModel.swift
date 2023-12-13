//
//  SleepingViewModel.swift
//  Final Project- Sleep App
//
//  Created by Clarissa Pace on 12/13/23.
//

import Foundation

class SleepLogViewModel: ObservableObject {
    @Published var logs: [SleepLog] = []
    @Published var hoursSlept: Int = 0
    @Published var comment: String = ""

    init() {
        loadLogs()
    }

    func addLog() {
        let newLog = SleepLog(hoursSlept: hoursSlept, comment: comment)
        logs.append(newLog)
        saveLogs()
        hoursSlept = 0
        comment = ""
    }

    private func saveLogs() {
        SleepDataManager.shared.saveLogs(logs)
    }

    private func loadLogs() {
        logs = SleepDataManager.shared.loadLogs()
    }
}
