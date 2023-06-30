//
//  ScheduleView.swift
//  manatee_app_v0
//
//  Created by Matthew Leroe on 6/28/23.
//

import SwiftUI

struct ScheduleView: View {
    @State private var selectedDate: Date = Date()
    @State private var days: [Day] = []

    var body: some View {
        VStack {
            DatePicker("Select Month and Year", selection: $selectedDate, displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
                .onChange(of: selectedDate, perform: { value in
                    // Update days when date changes
                    // Replace this with actual data fetching from your backend
                    let randomAvailability = Bool.random()
                    days = (1...30).map { Day(day: $0, isAvailable: randomAvailability) }
                })
            List {
                ForEach(days, id: \.day) { day in
                    HStack {
                        Text("Day \(day.day)")
                        Spacer()
                        Text(day.isAvailable ? "Available" : "Not Available")
                            .foregroundColor(day.isAvailable ? .green : .red)
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        if day.isAvailable {
                            print("Day \(day.day) selected")
                        } else {
                            print("Day \(day.day) is not available")
                        }
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Schedule View")
    }

    struct Day {
        let day: Int
        let isAvailable: Bool
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
