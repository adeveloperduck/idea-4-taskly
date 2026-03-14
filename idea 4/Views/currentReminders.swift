//
//  currentReminders.swift
//  idea 4
//
//  Created by Navneet Dagdiya on 14/3/2026.
//

import SwiftUI
import Foundation

struct reminder: Identifiable {
    let id = UUID()
    let title: String
    var isComplete: Bool = false
}


var Reminders: [reminder] = [
    reminder(title: "Buy groceries"),
    reminder(title: "Call mom"),
    reminder(title: "Read a book"),
]

struct currentReminders: View {
    @State private var reminders = Reminders
    
    var body: some View {
        
        List($reminders) { $reminder in
            HStack {
                if reminder.isComplete {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.orange)
                        .onTapGesture {
                            reminder.isComplete.toggle()
                        }
                    
                } else {
                    Image(systemName: "circle")
                        .onTapGesture {
                            reminder.isComplete.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                reminders.removeAll { $0.id == reminder.id }
                            }
                        }
                }
                    if reminder.isComplete{
                        Text(reminder.title)
                            .foregroundStyle(Color.gray)
                    } else {
                        Text(reminder.title)
                    }
                    
                }
                
            }
            
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("New Task") {
                        reminders.append(reminder(title: "New task"))
                    }
                }
            }
            
        }
        
    }

#Preview {
    currentReminders()
}
