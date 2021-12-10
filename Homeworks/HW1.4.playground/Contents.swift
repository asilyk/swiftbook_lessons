import UIKit
//: # Home Work 4

/*:
 ## Задание 1
 Пользователь открывает вклад (deposit) в банке на 5 лет (period) на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия вклада и вывести результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...> рублей".  Для решения данной задачи используйте цикл for-in.

 > Сумма вклада увеличивается с каждым годом и процент нужно считать уже от увеличенной суммы.
  */
var deposit = 500_000.0
let period = 5
let rate = 0.11
var profit = 0.0

for _ in 1...period {
    let accrual = deposit * rate

    profit += accrual
    deposit += accrual
}

print(String(format: "Сумма вклада через \(period) лет увеличится на %.2f и составит %.2f рублей", profit, deposit))
/*:
 ## Задание 2
 2.1 Создайте целочисленный массив данных с любым набором чисел.
 */
let integers = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
//: 2.2 Выведите на консоль все четные числа из массива
print("\nAll even elements in the array \"integers\":")

for integer in integers {
    if integer.isMultiple(of: 2) {
        print(integer)
    }
}

//for integer in integers {
//    if integer % 2 == 0 {
//        print(integer)
//    }
//}

/*: 2.3* В циклах для перехода к следующей итерации без выполнения последующего кода можно использовать оператор `Continue`. В этом случае весь последующий код игнорируется.

 Используя оператор `Continue` выведите на консоль все нечетные числа из массива. Для этого нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.
 */
print("\nAll odd elements in the array \"integers\":")

for integer in integers {
    if integer.isMultiple(of: 2) {
        continue
    }
    print(integer)
}

//for integer in integers {
//    if integer % 2 == 0 {
//        continue
//    }
//    print(integer)
//}

//for integer in integers {
//    if integer % 2 != 0 {
//        print(integer)
//    }
//}

//for integer in integers {
//    if !integer.isMultiple(of: 2) {
//        print(integer)
//    }
//}

/*: ## Задание 3
 Создайте цикл с интервалом от 1 до 10 в котором случайным образом должно вычисляться число в пределах от 1 до 10. Если выпадет число 5, выведите на консоль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...> итераций".

 Для остановки цикла используйте оператор break. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.

  Для определения случайного числа используйте функцию random: `Int.random(1...10)`
 */
for counter in 1...10 {
    let randomNumber = Int.random(in: 1...10)

    if randomNumber == 5 {
        print("\nЧтобы выпало число 5, понадобилось \(counter) итераций")
        break
    }
}

//var numberWasRolled = false
//
//for counter in 1...10 {
//    let randomNumber = Int.random(in: 1 ... 10)
//
//    if randomNumber == 5 {
//        numberWasRolled = true
//
//        let nounEnding: Character
//        var verbEnding: Character = "о"
//
//        if counter == 1 {
//            nounEnding = "я"
//            verbEnding = "а"
//        } else if counter < 5 {
//            nounEnding = "и"
//        } else {
//            nounEnding = "й"
//        }
//
//        print("\nЧтобы выпало число 5, понадобил\(verbEnding)сь \(counter) итераци\(nounEnding)")
//        break
//    }
//}
//
//if numberWasRolled == false {
//    print("\nЧисло 5 так и не выпало, попробуй еще раз")
//}

/*:
 ## Задание 4
  На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на один. Определите при помощи цикла, через сколько дней она заберется на столб? Подумайте над тем, какой цикл использовать в этой ситуации.
 */
let metersPerDay = 2
let metersPerNight = -1
var passedMeters = 0
var days = 0

while passedMeters < 10 {
    days += 1

    passedMeters += metersPerDay
    if passedMeters >= 10 {
        break
    }

    passedMeters += metersPerNight
}

print("\nThe turtle crawled on the pole for \(days) days")
