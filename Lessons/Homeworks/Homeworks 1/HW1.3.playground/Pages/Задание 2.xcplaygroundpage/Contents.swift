import Foundation

/*:
 ## Задание 2

 >Во время выполнения данного задания Вы будете выводить в консоль опциональные значения.  Компилятор будет выдавать предупреждение: «Expression implicitly coerced from `Int?` to Any».  В данном случае обращать внимание на это предупреждение не нужно.

 Ваше приложение запрашивает пользователя его возраст.  Введённые пользователем данные передаются Вам в виде текста, `String`.  Однако, Вам нужно сохранить значение в виде целого числа `Int`.  Пользователь может сделать ошибку и ввести неверные данные.

 Объявите свойство `userInputAge` с типом `String` и присвойте ему значение "34e" для моделирования опечатки.  Затем определите свойство `userAge` с явно заданным типом `Int` и присвойте ему целочисленное значение, извлеченное из свойства `userInputAge`.  Какую ошибку Вы получаете? Объясните, что это значит.
 */
// let userInputAge = "34e"
// let userAge: Int = Int(userInputAge)

print("""
I got the error "Value of optional type 'Int?' must be unwrapped to a value of type 'Int'".
It happened because the value returned by "Int()" is of optional type 'Int?'. But my property is of type 'Int'.
To solve this problem, I need to unwrap the optional value or change the type of property "userAge".\n
""")
/*:
 Теперь поменяйте тип `userAge` на `Int?`, и выведите в консоль значение `userAge`.  Почему значение `userAge` равно `nil`?  Ответьте в комментарии или внутри print.
 */
// let userInputAge = "34e"
// let userAge: Int? = Int(userInputAge)
//
// print(userAge)

print("""
"userAge" property value now is nil. It happened
because the value of property "userInputAge" cannot be converted to a number by "Int()":
one of characters in this string is a letter.
To solve this problem, I need to correct a typo or to create my custom function to convert strings like this.\n
""")
/*:
 Теперь исправьте опечатку в значении `userInputAge`.  Что-нибудь в результатах вывода кажется Вам неуместным?

 Снова выведите в консоль `userAge`, но теперь извлеките `userAge` с помощью оператора «!».
 */
// let userInputAge = "34"
// let userAge: Int? = Int(userInputAge)
//
// print(userAge)

print("""
I got warning "Expression implicitly coerced from 'Int?' to 'Any'".
Output now is "Optional(34)". I need to unwrap my optional property.\n
""")

// print(userAge!)
/*:
 Используйте привязку опционалов для извлечения `userAge`.  Если `userAge` содержит значение, то выведите его в консоль.
 */
let userInputAge = "34"
let userAge: Int? = Int(userInputAge)

if let userAge = userAge {
    print(userAge)
}

print("Now it's okay!")
/*:
 Теперь снова эмулируйте опечатку и попробуйте вывести на консоль целочисленное значение переменной `userInputAge` при помощи оператора "!". Какую ошибку вы получаете? Почему?
 */
// let userInputAge = "34e"
// let userAge: Int? = Int(userInputAge)
//
// print(userAge!)

print("""
I got error "Fatal error: Unexpectedly found nil while unwrapping an Optional value".
"userAge" property value now is nil. I tried to force unwrap this property, and it was a bad idea.
We should avoid this type of unwrapping if we are not absolutely sure that the value is not nil.
""")
//: [Ранее: Задание 1](@previous)  |  задание 2 из 4  |  [Далее: Задание 3](@next)
