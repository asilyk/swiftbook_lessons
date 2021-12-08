import UIKit

//: ## Конструкция if
/*:
    if condition {
        some code
    }
 
*/

let number = 4

if number < 4 { // True
    print("Условие выполнено")
}



/*:
    if conditionOne {
        some code
    } else {
        some code
    }
 */
//if number < 3 {
//    print("Number less then 3")
//} else {
//    print("Number greater then 3")
//}

let italyTeamScore = 12
let spainTeamScore = 12

if italyTeamScore > spainTeamScore {
    print("Команда Италии победила")
} else {
    print("Команда Испании победила")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
*/
if italyTeamScore > spainTeamScore {
    print("Команда Италии победила")
} else if italyTeamScore < spainTeamScore {
    print("Команда Испании победила")
} else {
    print("У них ничья!")
}



if number < 5 && number > 1 {
    print("Number less the 5 and greter 1")
} else {
    print("Number greater the 5")
}



if number < 5 {
    print("Number less the 5")
}

if number >= 5 {
    print("Number greater the 5")
}
//: ### Тернарный оператор
var newNum = 6
let secondNum = 4
let thirdNum = 8

if newNum < 10 {
    print("newNum < 10")
} else {
    print("newNum >= 10")
}

newNum = newNum < 10 ? secondNum + thirdNum : secondNum - thirdNum
_ = newNum < 10 ? print("newNum < 10") : print("newNum >= 10")

//let quarter = monthOfBirth <= 3 ? 1 : monthOfBirth <= 6 ? 2 : monthOfBirth <= 9 ? 3 : 4


//: ## Switch statement

/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/
let value = 3

switch value {
case 1:
    print("One")
case 2:
    print("Two")
case 3, 4:
    print("Three or Four")
case 5:
    print("Five")
default:
    break
}


//: ### Соответствие диапазону
// все числа меньше заданного value
// ...value

// все числа больше заданного value
// value...

// числа от value1 до value2 включая обе границы
// value1...value2

// числа от value1 до value2 не включая value2
// value1..<value2

let temperature = 15
let weather = "rain"

switch temperature {
case ..<0:
    print("На улице мороз")
case 0...10:
    print ("холодно")
case 0...15 where weather == "rain":
    print("наверное уже осень!")
case 11..<20:
    print ("тепло")
case 30...40:
    print ("жарко")
case 40...:
    print("Аномальная жара")
default:
    print ("Странная погода")
}

let newValue = 60

switch newValue {
case _ where newValue % 2 == 0:
    print("число делится на 2")
    fallthrough
case _ where newValue % 3 == 0:
    print("число делится на 3")
    fallthrough
case _ where newValue % 5 == 0:
    print("число делится на 5")
default:
    print("нет совпадений")
}

// if используем тогда, когда количество вариантов не боьшое и легко управляемое. Плюс если надо использовать логическое выражение для ветвления.
// switch используем, если количество вриантов большое и для ветвления используется значение контстанты или переменной

//: ## Опциональные типы
let newString: String


var otherValue: Int? = nil
var doubleNumber: Double?
var stringValue: String?


var anotherString = "12345"
var result = Int(anotherString)

let numberNew = 6 + result!
//: ### Извлечение опционалов


//: ### Принудительное извлечение опционалов
var anotherValue: Int? = 6

if anotherValue != nil {
    print("anotherValue равно \(anotherValue!)")
} else {
    print("anotherValue содержит nil")
}

anotherValue = nil
let resultTwo = anotherValue ?? 2




//: ### Привязка опционалов

if let newValue = anotherValue {
    let focus = 37 * newValue
}


//: ### Неявно извлеченные опционалы
var localAddress: String
let address: String! = "Большой Каретный 16"

localAddress = address


