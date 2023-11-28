//
//  File.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 12/05/1445 AH.
//

import Foundation
import SwiftUI

class TaskViewModel: ObservableObject {
    // MARK: Current Week Days
    @Published var currentWeek: [Date] = []
    // MARK: Current Month Days
       @Published var currentMonth: [Date] = []
    // MARK: Current Day
    @Published var currentDay: Date = Date()
    
    
    // MARK: Initializing
    init() {
        fetchCurrentWeek()
        fetchCurrentMonth()
    }
    func fetchCurrentMonth() {
        let calendar = Calendar.current
        let range = calendar.range(of: .day, in: .month, for: Date())
        let startDate = calendar.date(from: calendar.dateComponents([.year, .month], from: Date()))
        
        guard let daysRange = range, let startDay = startDate else {
            return
        }
        
        (0..<daysRange.count).forEach { day in
            if let date = calendar.date(byAdding: .day, value: day, to: startDay) {
                currentMonth.append(date)
            }
        }
    }
    func fetchCurrentWeek() {
            let today = Date()
            let calendar = Calendar(identifier: .gregorian) // Specify Gregorian calendar to start with Sunday
            
            let week = calendar.dateInterval(of: .weekOfMonth, for: today)
            
            guard let firstWeekDay = week?.start else {
                return
            }
            
            let dateComponents = calendar.dateComponents([.weekday], from: firstWeekDay)
            let offset = (dateComponents.weekday! - 1) % 7
            
            (0..<7).forEach { day in
                if let weekday = calendar.date(byAdding: .day, value: day - offset, to: firstWeekDay) {
                    currentWeek.append(weekday)
                }
            }
        }

    // MARK: Extracting Date
    func extractDate(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    // MARK: Checking if current Date is Today
    func isToday(date: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(currentDay, inSameDayAs: date)
//        func isToday(date: Date, date1: Date) -> Bool {
//            
////            return Calendar.current.isDate(date, inSameDayAs: date1)
//            
//        //}
        // MARK: Checking if the currentHour is task Hour
        func isCurrentHour(date: Date) -> Bool {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            let currentHour = calendar.component(.hour, from: Date())
            
            let isToday = calendar.isDateInToday(date)
            
            return (hour == currentHour && isToday)
        }
    }
}
