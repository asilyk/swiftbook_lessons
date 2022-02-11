//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

var someStringDictionary = Dictionary<String, String>() //Полная форма записи словаря
var morStringDictionary: Dictionary<String, String> = [:]

var anotherSomeDictionary = [Int: String]() // Сокращенная форма записи словаря

var carWashQueue: [String: String] = [:]

// Наполнение словаря данными

carWashQueue = ["E432AS": "Red Toyota", "X876RE": "White BMW"]

carWashQueue["E432AS"]


// Изменение значения для ключа

carWashQueue["E432AS"] = "Red VW"

// Изменение значения с сохранением старого значения

let oldValue = carWashQueue.updateValue("Gray BMW", forKey: "X876RE")

// Добавление новой пары ключ-значение

carWashQueue["E432AQ"] = "Green Niva"
carWashQueue

// Удаление значения по ключу с сохранением значения

let removeValue = carWashQueue.removeValue(forKey: "E432AS")



//: [Next](@next)

