//
//  ContentView.swift
//  idea 4
//
//  Created by Navneet Dagdiya on 14/3/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            currentReminders()
                .tabItem {
                    Label("Tasks", systemImage: "list.bullet")
                }
            
            settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    ContentView()
}
