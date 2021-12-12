import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:

 - Игра с Салават Юлаев - 3:6

 - Игра с Салават Юлаев - 5:5

 - Игра с Салават Юлаев - N/A

 - Игра с Авангард - 2:1

 - Игра с АкБарс - 3:3

 - Игра с АкБарс - 1:2
 */
let gameResults = [
    "Салават Юлаев": ["3:6", "5:5", "N/A"],
    "Авангард": ["2:1"],
    "АкБарс": ["3:3", "1:2"]
]

for (teamName, results) in gameResults {
    for result in results {
        print("Игра с \(teamName) - \(result)")
    }
}

/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */
func calculateTotalSum(of numbers: [Int]) -> Int {
    var totalSum = 0

    for number in numbers {
        totalSum += number
    }

    return totalSum
}

let integers = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]

calculateTotalSum(of: integers)

//func calculateTotalSum(of numbers: Int...) -> Int {
//    var totalSum = 0
//
//    for number in numbers {
//        totalSum += number
//    }
//
//    return totalSum
//}
//
//calculateTotalSum(of: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610)

/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func isEven(_ number: Int) -> Bool {
    number.isMultiple(of: 2)
}

//func isEven(_ number: Int) -> Bool {
//    number % 2 == 0
//}

/*:
 3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
 */
func isMultipleOfThree(_ number: Int) -> Bool {
    number.isMultiple(of: 3)
}

//func isMultipleOfThree(_ number: Int) -> Bool {
//    number % 3 == 0
//}

/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */
//func createArrayOfNumbers(from x: Int, to y: Int) -> [Int] {
//    var numbers: [Int] = []
//
//    for number in x...y {
//        numbers.append(number)
//    }
//
//    return numbers
//}
//
//createArrayOfNumbers(from: 11, to: 20)

func createArrayOfNumbers(from x: Int, to y: Int) -> [Int] {
    var numbers: [Int] = []

    for number in x...y {
        if numbers.isEmpty {
            numbers.append(number)
            continue
        }

        let randomIndex = Int.random(in: 0..<numbers.count)
        numbers.insert(number, at: randomIndex)
    }

    return numbers
}

createArrayOfNumbers(from: -3, to: 11)
/*:
 3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
  */
let numbers = createArrayOfNumbers(from: 1, to: 100)
/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используйте ранее созданные функции из заданий **3.1** и **3.2**.
 */
func filterNumbers(in numbers: [Int], with handler: (Int) -> Bool) -> [Int] {
    var filteredNumbers: [Int] = []

    for number in numbers {
        if !handler(number) {
            filteredNumbers.append(number)
        }
    }

    return filteredNumbers
}

filterNumbers(in: numbers, with: isEven)

filterNumbers(in: numbers, with: isMultipleOfThree)
