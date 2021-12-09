
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */

//func addingTwoNumbers() {
//    let firstNumber = 3
//    let secondNumber = 4
//    let result = firstNumber + secondNumber
//    print(result)
//}

//addingTwoNumbers()
//addingTwoNumbers()

//let res = addingTwoNumbers
//addingTwoNumbers()
//res()

//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func addingTwoNumbers() -> Int {
    let firstNumber = 3
    let secondNumber = 4
    if firstNumber < secondNumber {
        return firstNumber + secondNumber
    } else {
        return firstNumber - secondNumber
    }
}

let value = addingTwoNumbers()
//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без аргументов

func addingTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    
    return firstNumber + secondNumber
}


addingTwoNumbers(firstNumber: 4, secondNumber: 5)
//addingTwoNumbers(firstNumber: 6, secondNumber: 4)





// Функция с параметрами и аргументами


func addingTwoNumbers(number a: Int, andNumber b: Int) -> Int {
    return a + b
}

addingTwoNumbers(number: 5, andNumber: 8)

func addingTwoNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}

addingTwoNumbers(5, 8)

func multiplyTwoNumbers(_ a: Int, _ b: Int) -> Int {
    return a * b
}

let valueTwo = multiplyTwoNumbers(4, 5) + addingTwoNumbers(3,7)

func addingTwoNumbers(_ a: Int, _ b: Int, _ c: Int) -> Int {
    return a + b - c
}

//: [Next](@next)
