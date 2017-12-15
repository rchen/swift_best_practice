//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var variable = 42

variable = 50

let constant = 1
//constant = 2
/* String */
let implicitInteger = 40
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label = "This width is"
let width = 94
let widthLabel = label + String(width)

let widthTextLabel = "\(label) 256"
let widthIncreaseLabel = "\(label) \(width + 123)"

/* Array & Dictionary */
var shoppingList = ["catfish", "water", "tulips", "blue print"]
shoppingList[1] = "bottle of water"
print(shoppingList)


var hashMaps = [
    "age": "36",
    "gendor": "F"
]

/* Optional */
var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "Grant Chen"
var greeting  = "Hello!"

if let name = optionalName {
    greeting = "Hello, \(name)"
}

/* switch */
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

/* for-in iterate */
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest
// for
for i in 0...3 {
    print(i)
}

/* while */
var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2
repeat {
    m = m * 2
} while m < 100
m

/* Fuctions and Closures */
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
greet(name: "rchen", day: "Monday")

func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}

getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(numbers: 42, 597, 12)

// map reduce
var numbers = [1, 2, 3]
let result = numbers.map { (num) -> Int in
    return num * 10
}.reduce(0) { (result, item) -> Int in
    return result + item
}
result

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

