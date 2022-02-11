import UIKit

//: # Home Work 7

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */
enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}

//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».
func doMathAction(_ firstNumber: Int, _ secondNumber: Int, _ action: CalculationType) -> Int {
    var result = 0
    var preposition = "и"

    switch action {
    case .addition:
        result = firstNumber + secondNumber
    case .subtraction:
        result = firstNumber - secondNumber
    case .multiplication:
        result = firstNumber * secondNumber
        preposition = "на"
    case .division where secondNumber != 0:
        result = firstNumber / secondNumber
        preposition = "на"
    default:
        print("Error!")
        return 0
    }

    print("Результат \(action.rawValue) \(firstNumber) \(preposition) \(secondNumber) равен \(result)")

    return result
}

//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.
var action = CalculationType.addition
doMathAction(10, 3, action)

action = .subtraction
doMathAction(10, 3, action)

action = .multiplication
doMathAction(10, 3, action)

action = .division
doMathAction(10, 3, action)
doMathAction(10, 0, action)
/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.

 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).

 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */
enum DistanceUnit {
    enum NonISUCountry: String {
        case usa = "США"
        case liberia = "Либерия"
        case myanmar = "Мьянма"
    }

    case versta(title: String, denotation: String, countries: [String])
    case kilometer(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, nonISUCountries: [NonISUCountry])
}

/*:

 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */
func printInfoString(_ title: String, _ denotation: String, _ countries: [String]) {
    print("\(title). Краткое наименование: \(denotation) Страны: ", terminator: "")
    if countries.isEmpty {
        print("не используется")
    } else {
        print(countries.joined(separator: ", "))
    }
}

func printInfo(about unit: DistanceUnit) {
    switch unit {
    case let .versta(title, denotation, countries),
         let .kilometer(title, denotation, countries):

        printInfoString(title, denotation, countries)

    case let .mile(title, denotation, nonISUCountries):

        let countries = nonISUCountries.map(\.rawValue)
        printInfoString(title, denotation, countries)
    }
}

let versta = DistanceUnit.versta(title: "Верста", denotation: "в.", countries: ["Россия"])
printInfo(about: versta)

let countries = ["Россия", "Казахстан", "Германия", "Испания"]
let kilometer = DistanceUnit.kilometer(title: "Километр", denotation: "км.", countries: countries)
printInfo(about: kilometer)

let nonISUCountries = [
    DistanceUnit.NonISUCountry.usa,
    DistanceUnit.NonISUCountry.liberia,
    DistanceUnit.NonISUCountry.myanmar
]
let mile = DistanceUnit.mile(title: "Миля", denotation: "мл.", nonISUCountries: nonISUCountries)
printInfo(about: mile)
/*:
 ## Задание 3
 3.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`

 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.

 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
  */
struct Car {
    let model: String
    var power: Int
    var description: String {
        "This \(model) model car has \(power) horsepower"
    }

    mutating func increasePower(by increase: Int) {
        power += increase
    }
}

/*:
 3.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
 */
var car = Car(model: "X5", power: 150)
print(car.description)

car.increasePower(by: 13)
print(car.description)
