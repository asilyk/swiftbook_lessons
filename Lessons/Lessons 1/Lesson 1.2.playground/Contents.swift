import UIKit
//: ## Базовые операторы


//: ### Оператор присваивания:
let firstString = "Hello"


//: ### Арифметические операторы:
// +
// -
// *
// /

let firstNumber = 7
let secondNumber = 8

var result = firstNumber + secondNumber
result = firstNumber - secondNumber
result = firstNumber * secondNumber
result = firstNumber / secondNumber

result = 6 * (7 - 8)


//: ### Оператор остатка от деления:

result = 8 % 3

//: ### Составные операторы:
var number7 = 24
let number8 = 12

//number7 = number7 + 8
number7 += 8
//number7 = number7 - 9
number7 -= 9
//number7 = number7 * 2
number7 *= 2
//number7 = number7 / 3
number7 /= 3

//: ### Операторы сравнения:
let number4 = 13
let number5 = 3



//let result2 = number4 < number5
//let result2 = number4 > number5
//let result2 = number4 >= number5
//let result2 = number4 <= number5
//let result2 = number4 != number5
//let result2 = number4 == number5


//: ### Оператор логического НЕ:

let cond = true
let invert = !cond


//: ### Оператор логического И:
let number6 = 8

let nextResult = number4 < number6 && number5 > number6

//      number1         number2     number1 && number2
//      true            true        true
//      true            false       false
//      false           true        false
//      false           false       false

//: ### Оператор логического ИЛИ:
let result4 = number4 > number6 || number5 > number6

//      number1         number2     number1 || number2
//      true            true        true
//      true            false       true
//      false           true        true
//      false           false       false



//: ### Строки и символы:
let name: String
var email = ""

name = "Nikita"
let surName = "Zharinov"

//let aboutCourse = """
//Название: "Основы программирования на языке Swift"
//Количество уроков: 8
//Текущий урок: 2
//Ведущий курса: Никита Жаринов
//"""

//print(aboutCourse)
//: ### Конкатенация строк
var fullName = name + " " + surName
var myName = "Меня зовут "

//myName = myName + fullName
myName += fullName
//: ### Интерполяция строк
let numberLessons = 8
let lessonNumber = 2

let aboutCourse = """
Название: "Основы программирования на языке Swift"
Количество уроков: \(numberLessons)
Сейчас у нас урок номер \(lessonNumber) и до окончания курса нам осталось \(numberLessons - lessonNumber) уроков
Ведущий курса: \(fullName)
"""

print(aboutCourse)



let char: Character = "t"
let exclamationMark: Character = "!"

fullName.append(exclamationMark)
