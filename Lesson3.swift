//
//  ContentView.swift
//  Lesson3
//
//  Created by Tung Hong Jiang on 21/7/25.
//

import SwiftUI

struct ContentView: View {
    @State var thing: Bool = false
    var body: some View {
        VStack {
            Button(thing ? "fried chicken" : "ice cream") {
                thing.toggle()
                
            }
            .foregroundStyle(Color.red)
            .clipShape(Capsule())
            .background(Color(red: 0, green: 0, blue: 0))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

var num = 5
var numbers = [2, 4, 25, 15]
var multiply = numbers.map({$0 * num})
print(multiply)

