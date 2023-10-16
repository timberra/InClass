import UIKit
//MARK: -Enumeration

var someDay = "Monday"

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday
}

var weekday = Weekday.monday

func setupAlarm() {
    if weekday == .monday || weekday == .tuesday {
        print("Setup alarm at 7AM")
    } else {
        print("No alarm for today")
    }
}

setupAlarm()

weekday = .wednesday

setupAlarm()


func setupSleepTimer() {
    switch weekday {
    case .monday:
        print("Setup alarm at 7AM")
    case .tuesday:
        print("Setup alarm at 7AM")
    case .wednesday:
        print("Setup alarm at 7AM")
    case .thursday:
        print("Setup alarm at 7AM")
    case .friday:
        print("Setup alarm at 7AM")
    case .saturday:
        print("No alarm for today")
    case .sunday:
        print("No alarm for today")
    }
}

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case earth = 1, venus, mercury, mars, jupiter, saturn, neptune, uranus
}

var somePlanet = Planet.mars

var marsPlanet = Planet(rawValue: 4)
print("\(marsPlanet!) is the \(somePlanet.rawValue) planet from the sun.")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("setup bet time at", 11, "PM")
print(wnd)


//MARK: -Stuct vs Class

struct ChessBoard {
    var playerName: String?
    var x: Int?
    var y: Int?
    
    func getpositionOnBoard() {
        print("The position of \(playerName ?? ""): x \(x ?? 0), y \(y ?? 0)")
    }
    
}
var playerOne = ChessBoard(playerName: "P1", x: 23, y: 6)
var playerTwo = ChessBoard(playerName: "P2", x: 1, y: 7)

playerOne.getpositionOnBoard()
playerTwo.getpositionOnBoard()

class MacBook {
    var name: String?
    var year: Int?
    var color: String?
    
    init(name: String? = nil, year: Int? = nil, color: String? = nil) {
        self.name = name
        self.year = year
        self.color = color
    }
    func getSpecs() {
        print("\(name ?? ""), \(year ?? 0), \(color ?? "")")
    }
}

var macBookPro = MacBook(name: "MacBookPro", year: 2021, color: "Grey")


let macBookAir = macBookPro
macBookAir.name = "macBookAir"

macBookPro.getSpecs()
macBookAir.getSpecs()


struct iPhone {
    
    var name: String?
    var year: Int?
    var color: String?
    var capacity: Int?
    
    func getSpecs() {
        print("Model: \(name ?? ""), year: \(year ?? 0),color: \(color ?? ""), \(capacity ?? 0) of GB")
    }
}

let iPhoneSE = iPhone(name: "iPhone SE",year: 2020, color: "Black", capacity: 64)

var iPhoneMini = iPhoneSE
iPhoneMini.name = "iPhone mini"

iPhoneSE.getSpecs()
iPhoneMini.getSpecs()
