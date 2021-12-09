//: [Previous](@previous)

import Foundation

//: ### Вариативные параметры

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5, 6, 7, 8)

func anotherFunc() {
    print(arithmeticMean(1, 2, 3, 4, 5, 6, 7, 8) * 5)
}

anotherFunc()


//: [Next](@next)
