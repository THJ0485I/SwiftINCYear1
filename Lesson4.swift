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

