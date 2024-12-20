//
//  ContentView.swift
//  ClockApp
//
//  Created by Jakob Theopold on 06.12.24.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            TabView(selection: Binding.constant(1)) {
                       
                       WorldClockView()
                           .tabItem {
                               Image(systemName: "globe")
                               Text("World Clock")
                           }
                           .tag(1)
                       
                       AlarmsView()
                           .tabItem {
                               Image(systemName: "alarm.fill")
                               Text("Alarm")
                           }
                           .tag(2)
            
                       StopwatchView()
                           .tabItem {
                               Image(systemName: "stopwatch.fill")
                               Text("Stopwatch")
                           }
                           .tag(3)
            }
            .preferredColorScheme(.dark)
            .tint(.green)
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
