//
//  ContentView.swift
//  BasicSwiftUIApp
//
//  Created by iMac01 on 9/4/26.
//
//  ContentView.swift
//  ios_application
//
//  Created by iMac09 on 9/1/26.
//

import SwiftUI

struct BuildSwiftUIApp: View {
    var body: some View {
        VStack {
            
            // Change 3: Added an additional Text component
            Text("Daily Scrum")
                .font(.headline)
            
            ProgressView(value: 5, total: 15)
                // Change 2: Changed visual property - progress bar color
                .tint(.cyan)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
                .foregroundStyle(Color.cyan)
            
            
            HStack {
                // Change 1: Changed displayed text
                Text("Speaker 1 of 5")
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

#Preview {
    BuildSwiftUIApp()
}
