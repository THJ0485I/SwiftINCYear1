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


///////////////

//
//  ContentView.swift
//  LessonUse
//
//  Created by Tung Hong Jiang on 18/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var val = 0
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Stepper("Ethan: \(val)", value: $val, step: 100000000)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  LessonUse
//
//  Created by Tung Hong Jiang on 18/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var val = 0
    var body: some View {
        NavigationStack {
            VStack {
                Spacer() // push to the botto
                HStack {
                    Spacer() // Push to the right
                    Text("Align to the right")
                    
                }
                .background(Color.red)
                HStack{
                    Text("Align to the left") // push to the left
                    Spacer()
                }
                .background(Color.blue)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


//
//  ContentView.swift
//  LessonUse
//
//  Created by Tung Hong Jiang on 18/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Minions")
                    .padding(.top)
                    .font(.headline)
                    .contextMenu {
                        Button {
                            
                        } label: {
                            Label("Eat", systemImage: "heart")
                        }
                        Button {
                            
                        } label: {
                            Label("Drink", systemImage: "pencil")
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


