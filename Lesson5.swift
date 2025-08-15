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

import SwiftUI

@main
struct SettingsApp: App {
    var body: some Scene {
        WindowGroup {
            SettingsHomeView()
        }
    }
}

struct SettingsHomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("General")) {
                    NavigationLink("About", destination: AboutView())
                    NavigationLink("Software Update", destination: SoftwareUpdateView())
                    NavigationLink("Keyboard", destination: KeyboardView())
                }

                Section(header: Text("Privacy")) {
                    NavigationLink("Location Services", destination: LocationView())
                    NavigationLink("Contacts", destination: ContactsView())
                }

                Section(header: Text("Account")) {
                    NavigationLink("iCloud", destination: ICloudView())
                    NavigationLink("Media & Purchases", destination: MediaView())
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct AboutView: View {
    var body: some View {
        VStack {
            Text("iOS Version: 17.0")
            Text("Model Name: iPhone 14")
        }
        .navigationTitle("About")
    }
}

struct SoftwareUpdateView: View {
    var body: some View {
        VStack {
            Text("iOS 17.1")
            Text("Your iPhone is up to date.")
        }
        .navigationTitle("Software Update")
    }
}

struct KeyboardView: View {
    var body: some View {
        VStack {
            Text("Keyboards installed: English, Emoji")
        }
        .navigationTitle("Keyboard")
    }
}

struct LocationView: View {
    var body: some View {
        VStack {
            Text("Location Services: On")
        }
        .navigationTitle("Location Services")
    }
}

struct ContactsView: View {
    var body: some View {
        VStack {
            Text("Contacts access: Allowed")
        }
        .navigationTitle("Contacts")
    }
}

struct ICloudView: View {
    var body: some View {
        VStack {
            Text("Storage: 5 GB used of 50 GB")
        }
        .navigationTitle("iCloud")
    }
}

struct MediaView: View {
    var body: some View {
        VStack {
            Text("Apple ID: gingerboi@icloud.com")
        }
        .navigationTitle("Media & Purchases")
    }
}












//////////////////





import SwiftUI

struct SettingItem: Identifiable {
    let id = UUID()
    var name: String
}

@main
struct SettingsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var items: [SettingItem] = [
        SettingItem(name: "Wi-Fi"),
        SettingItem(name: "Bluetooth"),
        SettingItem(name: "Notifications")
    ]
    @State private var newItemName: String = ""

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("General").font(.largeTitle)) {
                    ForEach(items) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            Text(item.name)
                        }
                    }
                }

                Section(header: Text("Add New Setting")) {
                    HStack {
                        TextField("Enter setting name", text: $newItemName)
                        Button("Add") {
                            if !newItemName.isEmpty {
                                items.append(SettingItem(name: newItemName))
                                newItemName = ""
                            }
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

// Detail view
struct DetailView: View {
    var item: SettingItem

    var body: some View {
        VStack {
            Text(item.name)
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
    }
}

