import UIKit

//: # Lesson 6
//: ## Классы

let postTitle = "Classes"
let postBody = "Text of article"
let postAuthor = "Ivan Akulov"

let postTitle2 = "Properties of Classes"
let postBody2 = "Another Text"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var body = ""
    var author = ""
    
    var numberOfComments: Int {
        comments.count
    }
    
    private var comments: [String] = []
    
    func addComment(_ comment: String) {
        print(comment)
        comments.append(comment)
    }
    
    func showAllComments() {
        for comment in comments {
            print(comment)
        }
    }
    
}

let firstPost = Post()
firstPost.title = "First post"
firstPost.body = "Hello"
firstPost.author = "Ivan Akulov"


let secondPost = firstPost

secondPost.title
secondPost.body
secondPost.author

secondPost.title = "Second Post"

print("Author \(firstPost.author) has published post \(firstPost.title)")
print("Author \(secondPost.author) has published post \(secondPost.title)")

firstPost === secondPost

let thirdPost = Post()

thirdPost.title = "Third Post"
print("Author \(thirdPost.author) has published post \(thirdPost.title)")


//: ### Методы классов

let fourPost = Post()
fourPost.title = "Four Post"
fourPost.body = "Hello"
fourPost.author = "Ivan Akulov"
fourPost.addComment("Thank you!")
fourPost.addComment("New Comment")

//fourPost.comments = []
//fourPost.numberOfComments = 154

print("The number of comments to the post \(fourPost.title) is \(fourPost.numberOfComments)")

fourPost.showAllComments()




//: ### Инициализация

//class Human {
//    var name = ""
//    var age = 0
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//let sergey = Human(name: "Sergey", age: 21)
//
//sergey.name
//sergey.age


//
//somePerson.name
//somePerson.age

class Rect {
    var lenth: Int
    var width: Int
    
    var square: Int {
        lenth * width
    }
    
    init(lenth: Int, width: Int) {
        self.lenth = lenth
        self.width = width
    }
    
}

let rect1 = Rect(lenth: 3, width: 4)
rect1.square


//: ### Наследование

class Human {

    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func walk() {
        print("I can walk")
    }

    func sleep() {
        print("I need sleep")
    }

    func eat() {
        print("I need food")
    }
}

let firstPerson = Human(name: "Ivan", age: 34)



class Child: Human {

    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}

var littleBoy = Child(name: "Tom", age: 4)

littleBoy.parenting()

littleBoy.age = 8

littleBoy.parenting()

class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let newChild = SchoolChild(name: "Maria", age: 7)
newChild.schooling()



//: ### Полиморфизм

class Shape {
    func draw() {
        print("Draw some shape")
    }
}

class Rectangle: Shape {
    override func draw() {
        print("Draw Rectangle")
    }
}

class Triangle: Shape {
    override func draw() {
        print("Draw Triangle")
    }
}

class Circle: Shape {
    override func draw() {
        print("Draw Circle")
    }
}

//func drawRectangle(_ rectangle: Rectangle) {
//    rectangle.draw()
//}
//
//func drawTriangle(_ triangle: Triangle) {
//    triangle.draw()
//}
//
//func drawCircle(_ circle: Circle) {
//    circle.draw()
//}



let rectangle = Rectangle()
let triangle = Triangle()
let circle = Circle()

//drawRectangle(rectangle)
//drawTriangle(triangle)
//drawCircle(circle)

func drawShape(_ shape: Shape) {
    shape.draw()
}

drawShape(rectangle)
drawShape(circle)
