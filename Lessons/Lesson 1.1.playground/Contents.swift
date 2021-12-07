/*:
 ## Lesson 1
 */

/*:
 ### Свойства (константы и переменные)
*/

//var str = "Hello, playground"


/*
 Футбол - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. Футбол это не просто вид спорта, футбол - это стиль жизни, футбол - это философия. Футбол, вид спорта для сильных духом и целеустремленных людей. Я люблю футбол. Футбол мой любимый вид спорта!
 */


var gameType = "Футбол"

let myCurrentTemperture = 21

print("\(gameType) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(gameType) это не просто вид спорта, \(gameType) - это стиль жизни, \(gameType) - это философия. \(gameType), вид спорта для сильных духом и целеустремленных людей. Я люблю \(gameType). \(gameType) мой любимый вид спорта!\n")

gameType = "Гандбол"

print("\(gameType) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(gameType) это не просто вид спорта, \(gameType) - это стиль жизни, \(gameType) - это философия. \(gameType), вид спорта для сильных духом и целеустремленных людей. Я люблю \(gameType). \(gameType) мой любимый вид спорта!")

gameType = "Теннис"

print("\(gameType) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(gameType) это не просто вид спорта, \(gameType) - это стиль жизни, \(gameType) - это философия. \(gameType), вид спорта для сильных духом и целеустремленных людей. Я люблю \(gameType). \(gameType) мой любимый вид спорта!")
/*:
 ### Базовые типы в Swift
*/
//gameType = 10
/*:
 *Строковые типы - String*
*/
//let myName: String = "Никита"
let myName = "Никита"

var yourName: String

let emptyString = ""
/*:
 *Числовые типы*
 */
// Int

//let number: Int = 20
let number = 20
 
// Double

//let localTemp: Double = 23.5
let localTemp = 23.5

// Float
let newNumber: Float = 65.76



var someFloat: Float = 1.0

someFloat = 121.123444
someFloat = 1221.123444
someFloat = 12321.123444
someFloat = 123421.123444
someFloat = 1234521.123444

/*:
 *Логические переменные*
*/
//let select: Bool = true
let select = true


 let newSelect = true



let digital = 10
var count = 15
let value = "new day"


/*:
 ### Приведение типов в Swift
*/

// Новая константа с типом Double
let firstNumber = 10
let secondNumber = 25.5

let result = Double(firstNumber) + secondNumber




// Новая константа с типом Int

let intNumber = firstNumber + Int(secondNumber)

// Приведение числовых значений к строковым данным

let myAge = 59
let myMessage = "My age is "

let newResult = myMessage + String(myAge)


// Приведение строковых данных к числовым значениям

let anyString = "10"
let afterTenYears = myAge + (Int(anyString) ?? 0)

