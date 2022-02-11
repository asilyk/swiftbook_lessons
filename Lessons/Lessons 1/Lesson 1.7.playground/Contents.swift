import UIKit

//: # Lesson 7

//: ## Перечисления

var someday = "Monday"

func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8.00am")
    } else {
        print("Today is \(day). Alarm not set")
    }
}

setupAlarm(for: someday)
someday = "tuesday"
setupAlarm(for: someday)

/*:
    enum EnumerationName {
        case enumeration
    }
 
 */


enum Weekday {
    case monday
    case tuesday
    case wednsday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekDay = Weekday.monday
weekDay = .sunday



//: ### Использование инструкции Switch

func setupAlarm() {
    switch weekDay {
    case .monday:
        print("Set up the alarm at 8.00am")
    case .tuesday:
        print("Set up the alarm at 8.30am")
    case .wednsday:
        print("Set up the alarm at 7.00am")
    case .thursday:
        print("Set up the alarm at 7.30am")
    case .friday:
        print("The last day of week!!!")
    default:
        print("Weelend! Alarm is not set")
    }
}

//: ### Исходные значения

//enum Countries {
//    case usa
//    case russia
//    case china
//}


enum Countries: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

var country = Countries.usa
country = .china

print("case name: \(country.rawValue)")




enum Planet: Int {
    case mercury
    case venus
    case earth, mars = 6, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth
print("Earth is \(earth.rawValue) planet from the sun")

//: ### Инициализация

if let possiblePlanet = Planet(rawValue: 7) {
    print("The seventh planet is \(possiblePlanet)")
}

//: ### Связанные значения (ассоциированные параметры)

enum Weekday2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

var weekday = Weekday2.workday(message: "Setup alarm at ", time: 8)

func setupAlarm(for weekday: Weekday2) {
    switch weekday {
    case let .workday(message, time):
        print("\(message) \(time)")
    case let .weekend(message):
        print("\(message)")
    }
}
setupAlarm(for: .workday(message: "Good morning", time: 6))

//: ## Структуры


let playerOne = "Player One"
var player1XPosition = 10
var player1YPosition = 5

let playerTwo = "Player Two"
var player2XPosition = 8
var player2YPosition = 3

func getPlayerPosition(for player: String, x: Int, y: Int) {
    print("The position of \(player): X\(x):Y\(y)")
}

getPlayerPosition(for: playerOne, x: player1XPosition, y: player1YPosition)
getPlayerPosition(for: playerTwo, x: player2XPosition, y: player2YPosition)


struct PositionOnMap {
    let player: String
    var x: Int
    var y: Int
}

var playerOnePosition = PositionOnMap(player: "Player One", x: 10, y: 5)
var playerTwoPosition = PositionOnMap(player: "Player Two", x: 8, y: 3)

playerOnePosition.player
playerOnePosition.x
playerOnePosition.y
/*:
    struct StructureName {
        var nameOfVariable: DataType
        func someFunction {
            some code
        }
    }
 
 */



//: ### Сравнение классов и структур

class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func printDescription() {
        print("\(name) \(year) \(color)")
    }
}

let macBookPro = MacBook(name: "MacBookPro", year: 2021, color: "Grey")

let macBookAir = macBookPro
macBookAir.name = "MacBook Air"

macBookPro.printDescription()


struct Iphone {
    var name: String
    var color: String
    var capacity: Int
    
    func printDescription() {
        print("\(name) \(color) \(capacity)Gb")
    }
}

let iPhoneXR = Iphone(name: "iPhone XR", color: "Pink", capacity: 128)
var iPhone12 = iPhoneXR
iPhone12.name = "iPhone 12"

iPhoneXR.printDescription()
iPhone12.printDescription()

var someNumber = 12
var anyNumber = someNumber
someNumber = 0

//: ### Методы в структурах
//struct Rectangle {
//    var width: Int
//    var height: Int
//
//    var area: Int {
//        width * height
//    }
//}


struct Rectangle {
    var width: Int
    var height: Int

    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var myRectangle = Rectangle(width: 10, height: 5)
print("\(myRectangle.width) \(myRectangle.height)")
myRectangle.area
myRectangle.scale(width: 2, height: 3)
print("\(myRectangle.width) \(myRectangle.height)")

myRectangle.area
