//: [Previous](@previous)

import Foundation

//: ### Функции как замыкания


//: Отбираем числа меньше заданного значения


func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumbers: [Int] = []
    for number in numbers {
        if number < value {
            filteredSetOfNumbers.append(number)
        }
    }
    return filteredSetOfNumbers
}

let someValue = 5
let numbers = [5, 8, 20, 13, 1, 4, 3, 6]

filterLessThanValue(value: someValue, numbers: numbers)
//: Отбираем числа больше заданного значения

func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredSetOfNumbers: [Int] = []
    for number in numbers {
        if number > value {
            filteredSetOfNumbers.append(number)
        }
    }
    return filteredSetOfNumbers
}

filterGreaterThanValue(value: someValue, numbers: numbers)

//: Функция для отбора чисел, относительно заданного значения


func filterWithPredicateClosure(value: Int,
                                numbers: [Int],
                                handler: (Int, Int) -> Bool) -> [Int] {
    
    var filterNumbers: [Int] = []
    
    for number in numbers {
        if handler(number, value) {
            filterNumbers.append(number)
        }
    }
    return filterNumbers
}


//: Функция для отбора числе меньше указанного значения

func lessThanValue(number: Int, value: Int) -> Bool {
    number < value
}





//: Функция для отбора числе больше указанного значения

func greaterThanValue(number: Int, value: Int) -> Bool {
    number > value
}

//: Отбор чисел меньше указанного значения

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: lessThanValue)

//: Отбор чисел больше указанного значения
filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: greaterThanValue)

//: ### Замыкающие выражения

/*:
 
Замыкающие выражения - это безымянные функции, которые написаны в облегченном синтаксисе, которые могут захватывать значения из окружающего контекста
 
 */


/*:
    { (параметры) -> тип результата in
        тело замыкающего выражения
    }
 */


/*:
 Использование замыкания в качестве аргумента
 
 Отбор чисел меньше указанного значения
 */

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: {(number: Int, value: Int) -> Bool in
                            number < value
                           })


//: Отбор чисел больше указанного значения

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: {(number: Int, value: Int) -> Bool in
                            number < value
                           })


//: Вывод типа из контекста

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: {(number, value) in number < value })

//: Неявные возвращаемые значения из замыканий с одним выражением



//: Сокращенные имена параметров

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           handler: { $0 < $1 })


//: Последующее замыкание

filterWithPredicateClosure(value: someValue, numbers: numbers) { $0 < $1 }

//: Операторные функции
filterWithPredicateClosure(value: someValue, numbers: numbers, handler: <)
filterWithPredicateClosure(value: someValue, numbers: numbers, handler: >)

