import UIKit

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте класс `Orange` со следующими свойствами:

 - `color: String`

 - `taste: String`

 - `radius: Double`

 Необходимо реализовать возможность создания экземпляра класса со значениями по умолчанию для свойств *color* и *taste*. Свойство *radius* должно быть обязательным для инициализации, т.е. не должно быть возможности создания экземпляра класса без радиуса.

 Объявите геттер *orangeVolume*, возвращающий объем апельсина. При этом расчет объема необходимо реализовать в методе *calculateOrangeVolume* (число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить).

 Создайте экземпляр класса `Orange`, вызвав при этом инициализатор только для радиуса. Остальным свойствам, созданного экземпляра присвойте следующие значения:

 - `color` — *Orange*

 - `taste` — *Sweet*

 Выведите на консоль сообщение: «Orange has <...> color and <...> taste. The volume of orange is <...>», обращаясь к этим значениям через экземпляр класса.
 */
final class Orange {
    // MARK: - Public Properties
    let radius: Double
    var color = ""
    var taste = ""

    var orangeVolume: Double {
        calculateOrangeVolume()
    }

    // MARK: - Initializers
    init(radius: Double) {
        self.radius = radius
    }

    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }

    // MARK: - Private Methods
    private func calculateOrangeVolume() -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}

let orange = Orange(radius: 11.12)
orange.color = "Orange"
orange.taste = "Sweet"

print(String(format: "Orange has \(orange.color) color and \(orange.taste) taste. The volume of orange is %.2f\n", orange.orangeVolume))
/*:
 ## Задание 2
 2.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:

 - `square: Double`

 - `perimeter: Double`

 - `description: String`

 Свойство `description` должно возвращать сообщение следующего вида: «Square of shape <...> is <...>. Perimeter - <...>»
 */
class Shape {
    // MARK: - Public Properties
    var shape: String { "shape" }
    var area: Double { 0 }
    var perimeter: Double { 0 }

    var description: String {
        "Area of shape \(shape) is \(round(area * 100) / 100). Perimeter - \(round(perimeter * 100) / 100)"
    }
}

/*:
 2.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `square` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */
final class Circle: Shape {
    // MARK: - Public Properties
    let radius: Double

    // MARK: - Initializers
    init(radius: Double) {
        self.radius = radius
    }

    // MARK: - Override Methods
    override var shape: String { "circle" }

    override var area: Double {
        Double.pi * pow(radius, 2)
    }

    override var perimeter: Double {
        2 * Double.pi * radius
    }
}

class Rectangle: Shape {
    // MARK: - Public Properties
    let length: Double
    let width: Double

    // MARK: - Initializers
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }

    // MARK: - Override Methods
    override var shape: String { "rectangle" }

    override var area: Double {
        length * width
    }

    override var perimeter: Double {
        2 * (length + width)
    }
}

/*:
 2.3. Создайте класс `Ellips`, унаследовав его от `Rectangle`. Переопределите свойства `square` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */
final class Ellips: Rectangle {
    // MARK: - Override Methods
    override var shape: String { "ellips" }

    override var area: Double {
        Double.pi * (length / 2) * (width / 2)
    }

    override var perimeter: Double {
        Double.pi * (length / 2 + width / 2)
    }
}

//: 2.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.
let circle = Circle(radius: 11.12)
print(circle.description)

let rectangle = Rectangle(length: 11, width: 5)
print(rectangle.description)

let ellips = Ellips(length: 12, width: 6)
print(ellips.description)
/*:
 ## Задание 3
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:

 - `salary`

 - `name`

 - `surname`
 */
final class Employee {
    // MARK: - Public Properties
    let salary: Int
    let name: String
    let surname: String

    // MARK: - Initializers
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surname = surname
    }
}

//: 3.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
//: 3.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees: [Employee] = []

for _ in 0..<10 {
    let name = names.randomElement() ?? ""
    let surname = surnames.randomElement() ?? ""
    let salary = Int.random(in: 1000...2000)

    let employee = Employee(salary: salary, name: name, surname: surname)
    employees.append(employee)
}

//: 3.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фамилия>’s salary is $<... >»
func printEmployeesData(employees: [Employee]) {
    for employee in employees {
        print("\(employee.name) \(employee.surname)’s salary is $\(employee.salary)")
    }
}

print("\nEmployees: ")
printEmployeesData(employees: employees)
//: 3.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
var employeesWithEvenSalary: [Employee] = []

for employee in employees {
    if employee.salary.isMultiple(of: 2) {
        employeesWithEvenSalary.append(employee)
    }
}

print("\nEmployees with even salary: ")
printEmployeesData(employees: employeesWithEvenSalary)
