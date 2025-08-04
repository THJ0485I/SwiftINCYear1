import Foundation

var strAsInt = Int("swift")
print(strAsInt)
var optionalString: String? = nil

print(optionalString ?? "Default")
print("I love scouts and bubble tea")

struct AboutMe {
    let name: String
    let Class: String
    let CCA: String
    
    func describe() {
        return "I am \(name), my class is \(Class) and my CCA is \(CCA)"
    }
}

var aboutme = AboutMe(name: "Hong Jiang", Class: "S1-10", CCA: "Air Scouts");)

// mini challenge 1
struct FootballClub {
    let name: String
    let topPlayer: String
}

let clubs: [FootballClub] = [
    FootballClub(name: "Liverpool", topPlayer: "Steven Gerrard"),
    FootballClub(name: "Real Madrid", topPlayer: "Cristiano Ronaldo"),
    FootballClub(name: "Barcelona", topPlayer: "Lionel Messi"),
    FootballClub(name: "Manchester United", topPlayer: "Wayne Rooney"),
    FootballClub(name: "Juventus", topPlayer: "Alessandro Del Piero"),
    FootballClub(name: "Bayern Munich", topPlayer: "Franz Beckenbauer"),
    FootballClub(name: "AC Milan", topPlayer: "Paolo Maldini"),
    FootballClub(name: "Chelsea", topPlayer: "Frank Lampard")
]

for club in clubs {
    print("\(club.topPlayer) is the top player of \(club.name)")
}

struct FootballPlayer {
    let name: String
    let position: String
    let goals: Int
    let assists: Int

    // Method to describe the player
    func describe() -> String {
        
        // change return"..." to whatever you want. just need to include the parameters (e.g. \(position)) parameters are below
        return "\(name) plays as a \(position) with \(goals) goals and \(assists) assists."
    }
}
let players = [
    // change the parameters e.g. movie: kpop demon hunters. can add integers and strings
    FootballPlayer(name: "Messi", position: "Right Wing", goals: 820, assists: 360),
    FootballPlayer(name: "C. Ronaldo", position: "Left Wing / Striker", goals: 870, assists: 250),
    FootballPlayer(name: "De Bruyne", position: "Central Midfielder", goals: 100, assists: 270),
    FootballPlayer(name: "Haaland", position: "Striker", goals: 210, assists: 40),
    FootballPlayer(name: "Neymar Jr", position: "Left Wing", goals: 305, assists: 190)
]

for player in players {
    print(player.describe())
}


