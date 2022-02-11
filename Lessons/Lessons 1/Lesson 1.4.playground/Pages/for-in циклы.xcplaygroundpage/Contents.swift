//: [Previous](@previous)

import Foundation

//: ## For-in циклы

/*:
 
    for counter in lower…upper {
        some code
    }
 
 */
for _ in 1...5 {
    print("Hello!")
}

var anotherCounter = 0

for counter in 1...5 {
    anotherCounter += counter
}
print(anotherCounter)


//: ### Итерация по массиву

let fruits = [
    "apple",
    "banana",
    "pineapple",
    "apple",
    "pear",
    "apple",
    "plum",
    "apricot",
    "apple"
]

var appleCount = 0

for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}


print("The number of apples is \(appleCount) pieces")

//: ### Итерация по словарю

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4, "bird": 2]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

//: ### Итерация по тексту

let someText = "Hello Dolly!"

for symbol in someText {
    print(symbol)
}

//: [Next](@next)
