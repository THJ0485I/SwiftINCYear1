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


