import SwiftUI

struct TimelineEvent: Identifiable {
    let id = UUID()
    let title: String
    let details: String
    let time: String
}

@main
struct LessonUseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var puzzleAlert = false
    @State private var cluesAlert = false
    @State private var guessAccomplice = ""
    @State private var solved = false

    let timeline: [TimelineEvent] = [
        TimelineEvent(title: "Heist Starts", details: "At 2AM, the servers storing INCoin were breached.", time: "2:00AM"),
        TimelineEvent(title: "Transfer Initiated", details: "$1 Billion INCoin transferred to random accounts.", time: "2:06AM"),
        TimelineEvent(title: "Main Suspect Identified", details: "Joshua Sheen appeared on our screens when we tracked down the location of where the heist started.", time: "3.14AM"),
        TimelineEvent(title: "Escape", details: "Joshua fled with an accomplice using a private jet.", time: "4.23AM")
    ]

    var body: some View {
        TabView(selection: $selectedTab) {

            NavigationStack {
                List(timeline) { event in
                    VStack(alignment: .leading) {
                        Text(event.title).font(.headline)
                        Text(event.details).font(.subheadline)
                        Text(event.time).font(.caption).foregroundColor(.gray)
                    }.padding(.vertical, 4)
                }
                .navigationTitle("Heist Timeline")
            }
            .tabItem { Label("Timeline", systemImage: "clock") }
            .tag(0)

            VStack(spacing: 20) {
                Text("Who was the accomplice?").font(.headline)

                TextField("Enter name", text: $guessAccomplice)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                Button("Submit Guess") {
                    if guessAccomplice.lowercased() == "joshua feet" {
                        solved = true
                        puzzleAlert = true
                    } else {
                        solved = false
                        puzzleAlert = true
                    }
                }
                .buttonStyle(.borderedProminent)
                .alert(isPresented: $puzzleAlert) {
                    if solved {
                        return Alert(title: Text("Correct!"), message: Text("joshua feet was the accomplice!"), dismissButton: .default(Text("Continue")))
                    } else {
                        return Alert(title: Text("Try Again"), message: Text("That’s not the accomplice. Try Again."), dismissButton: .default(Text("Try Again")))
                    }
                }
            }
            .tabItem { Label("Puzzle", systemImage: "questionmark.circle") }
            .tag(1)

            VStack(spacing: 20) {
                Text("The INCoin Heist").font(.largeTitle).fontWeight(.bold)
                Text("Explore more information about the heist.").multilineTextAlignment(.center).padding()
                Spacer()
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 150)
                    .overlay(Text("Clue Hidden Here").foregroundColor(.white))
                    .contextMenu {
                        Button("Reveal Clue") {
                            cluesAlert = true
                        }
                    }
                    .alert(isPresented: $cluesAlert) {
                        Alert(title: Text("Clue Found"),
                              message: Text("They fled overseas using fake passports towards China."),
                              dismissButton: .default(Text("Close")))
                    }
                Spacer()
            }
            .tabItem { Label("Clues", systemImage: "magnifyingglass") }
            .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
