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



import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var name: String
    var isDone: Bool = false
    var priority: Int = 1
}

struct ContentView: View {
    @State private var tasks: [Task] = [
        Task(name: "Do homework"),
        Task(name: "Do revision"),
        Task(name: "Go and play games")
    ]
    
    @State private var newTaskName: String = ""
    
    var body: some View {
        TabView {
            VStack {
                List {
                    ForEach($tasks) { $task in
                        HStack {
                            Toggle(isOn: $task.isDone) {
                                Text(task.name)
                                    .strikethrough(task.isDone)
                            }
                            
                            Spacer()
                            
                            Stepper("Priority: \(task.priority)", value: $task.priority, in: 1...3)
                                .labelsHidden()
                        }
                        .contextMenu {
                            Button(role: .destructive) {
                                if let index = tasks.firstIndex(where: { $0.id == task.id }) {
                                    tasks.remove(at: index)
                                }
                            } label: {
                                Text("Delete Task")
                                Image(systemName: "Trash")
                            }
                            
                            Button {
                                tasks.append(Task(name: "New Task"))
                            } label: {
                                Text("Add Task")
                                Image(systemName: "Plus")
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                
                HStack {
                    TextField("New task", text: $newTaskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add") {
                        guard !newTaskName.isEmpty else { return }
                        tasks.append(Task(name: newTaskName))
                        newTaskName = ""
                    }
                }
                .padding()
            }
            .tabItem {
                Image(systemName: "list.bullet")
                Text("All Tasks")
            }
            
            // MARK: Completed Tasks Tab
            VStack {
                List {
                    ForEach(tasks.indices.filter { tasks[$0].isDone }, id: \.self) { index in
                        HStack {
                            Text(tasks[index].name)
                            Spacer()
                            Text("Priority: \(tasks[index].priority)")
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .tabItem {
                Image(systemName: "checkmark.circle")
                Text("Finished Tasks")
            }
        }
    }
}

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

#Preview()
{
    ContentView()
}

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            // Messaging app tab
            VStack {
                Image(systemName: "message.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.green)
                Text("Messaging App")
                    .font(.title2)
            }
            .tabItem {
                Image(systemName: "message.fill")
                Text("Chat")
            }

            // Announcement app tab
            VStack {
                Image(systemName: "megaphone.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.orange)
                Text("Announcements")
                    .font(.title2)
            }
            .tabItem {
                Image(systemName: "megaphone.fill")
                Text("Announcements")
            }

            // Photos app tab
            VStack {
                Image(systemName: "photo.on.rectangle")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.blue)
                Text("Photos")
                    .font(.title2)
            }
            .tabItem {
                Image(systemName: "photo.on.rectangle")
                Text("Photos")
            }

            // Social media tab
            VStack {
                Image(systemName: "person.2.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.purple)
                Text("Social Media")
                    .font(.title2)
            }
            .tabItem {
                Image(systemName: "person.2.fill")
                Text("Social")
            }
        }
    }
}

#Preview()
{
    ContentView()
}

