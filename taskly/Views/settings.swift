//
//  settings.swift
//  idea 4
//
//  Created by Navneet Dagdiya on 14/3/2026.
//

import SwiftUI
struct settings: View {
    
    @State private var isOn: Bool = false
    @State private var sliderValue: Double = 5
    
    var body: some View {
        VStack {
            Text("Task behaviour")
                .font(.largeTitle)
                .padding()
            Text("Time before the task auto delete")
                .font(.callout)
            Slider(
                value: $sliderValue,
                in: 0 ... 10
            )
            
            .frame(width: 200)
                .padding()
            Text("Value: \(sliderValue, specifier: "%.0f")")
            
                .onChange(of: sliderValue) { newValue in
                        settingsVariables.timeUntilTaskDeleted = Int(newValue)
                    }

            Text("made with ❤️ by [nav.](https://adeveloperduck.github.io/index.html)")
                .padding()
                .font(.callout)
        }
    }
}

#Preview {
    settings()
}
