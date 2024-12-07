import UIKit

// Step 1: Define the Base Protocol
protocol Monster {
    var name: String { get }
    func roar() -> String
}

// Step 2: Define Child Protocols
protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    func fly() -> String
}

protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    func swim() -> String
}

// Step 3: Create Four Classes

// Flying monsters
class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    func roar() -> String {
        return "Roar! I am \(name), the mighty Dragon!"
    }
    
    func fly() -> String {
        return "\(name) soars through the sky with a wingspan of \(wingSpan) meters!"
    }
}

class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    func roar() -> String {
        return "Roar! I am \(name), the majestic Gryphon!"
    }
    
    func fly() -> String {
        return "\(name) flies gracefully with a wingspan of \(wingSpan) meters!"
    }
}

// Water monsters
class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    func roar() -> String {
        return "ROAR! I am \(name), the fearsome Kraken!"
    }
    
    func swim() -> String {
        return "\(name) swims at a speed of \(swimSpeed) knots!"
    }
}

class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    func roar() -> String {
        return "I am \(name), the elegant Merfolk!"
    }
    
    func swim() -> String {
        return "\(name) swims gracefully at a speed of \(swimSpeed) knots!"
    }
}

// Step 4: Create a Function to Handle Monsters
func printMonsterDetails(monsters: [Monster]) {
    for monster in monsters {
        print(monster.roar())
        if let flyingMonster = monster as? FlyingMonster {
            print(flyingMonster.fly())
        } else if let waterMonster = monster as? WaterMonster {
            print(waterMonster.swim())
        }
        print("----")
    }
}

// Example Usage
let dragon = Dragon(name: "Firestorm", wingSpan: 15.0)
let gryphon = Gryphon(name: "Stormclaw", wingSpan: 12.0)
let kraken = Kraken(name: "Tentaclus", swimSpeed: 30)
let merfolk = Merfolk(name: "Aquaella", swimSpeed: 20)

let monsters: [Monster] = [dragon, gryphon, kraken, merfolk]
printMonsterDetails(monsters: monsters)
