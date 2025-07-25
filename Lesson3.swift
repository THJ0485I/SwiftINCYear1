//
//  ContentView.swift
//  Lesson3
//
//  Created by Tung Hong Jiang on 21/7/25.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View {
        VStack {
            Button("+") {
                self.number += 1
            }
            .font(.largeTitle)

            Text("\(number)")
                .font(.largeTitle)

            Button("-") {
                self.number -= 1
            }
            .font(.largeTitle)
            
            Button("Reset")
            {
                self.number = 0
            }
            .font(.largeTitle)
            

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

import SwiftUI

struct ContentView: View {
    // Array of messages
    let messages = ["Swift", "Python", "C++", "LUA", "C#", "C", "R#", "HTML", "Javascript", "CSS"]

    // State variable to track current index
    @State private var index = 0

    var body: some View {
        VStack(spacing: 20) {
            Text(messages[index])
                .font(.title)
                .padding()

            Button("Next Message") {
                // Go to the next message
                index = (index + 1) % messages.count
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
