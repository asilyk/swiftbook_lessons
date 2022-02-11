//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание пустого множества

var characters: Set<Character> = []

// Создание множества с типом String

var integers = Set<Int>()

var strings: Set = ["a", "a", "b", "b", "b", "d"]

// Добавление нового элемента в множество

let ter = strings.insert("f")


strings

// Проверка на наличие определенного элемента во множестве

strings.contains("a")

// Сортировка с использованием метода sorted() для последующей итерации по множеству

let newStrings = strings.sorted(by: >)

//: [Next](@next)
