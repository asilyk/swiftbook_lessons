import UIKit

//: # Home work 3

/*:
 ## Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие, при котором цене будет присвоено соответствующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */
let quantityOfGoods = 15
var pricePerItem: Int!
var totalPrice: Int = 0

if quantityOfGoods < 0 {
    print("Error! Wrong quantity of goods")
} else if quantityOfGoods == 0 {
    print("There are no goods. Total price is \(totalPrice)")
} else if quantityOfGoods <= 9 {
    pricePerItem = 1000
} else if quantityOfGoods <= 19 {
    pricePerItem = 800
} else {
    pricePerItem = 600
}

if let pricePerItem = pricePerItem {
    totalPrice = quantityOfGoods * pricePerItem
    print("Total price is \(totalPrice)")
}

//: |  задание 1 из 4  |  [Далее: Задание 2](@next)
