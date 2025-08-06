//
//  ContentView.swift
//  LessonUse
//
//  Created by Tung Hong Jiang on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Settings")
                .foregroundStyle(.black)
                .font(.largeTitle)
                
                NavigationLink {
                    LessonUse1()
                } label: {
                     Text("Wifi")
                        .font(.title)
                }
                NavigationLink {
                    LessonUse1()
                } label: {
                     Text("Bluetooth")
                        .font(.title)
                }
                NavigationLink {
                    LessonUse1()
                } label: {
                    // name of button
                     Text("Personal Hotspot")
                        .font(.title)
                }
                NavigationLink {
                    LessonUse1()
                } label: {
                     Text("Battery")
                        .font(.title)
                }
                NavigationLink {
                    LessonUse1()
                } label: {
                     Text("Mobile Service")
                        .font(.title)
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
