//
//  ContentView.swift
//  LessonUse
//
//  Created by Tung Hong Jiang on 18/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var Mango = "Mango"
    @State var MAN : Bool = false
    var body: some View {
        NavigationStack {
            HStack{
                Text("Fruits")
                    .font(.title)
                    .padding()
            }
            VStack {
                List {
                    Toggle(Mango, isOn : $MAN)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
