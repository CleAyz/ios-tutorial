import UIKit

var a = 2
var b = 3
var sleepy = true

a = b

if a == b {
    print("a is equal to b")
} else {
    print("a is not equal to b")
}

sleepy = false

if sleepy {
    print("Go to bed")
} else {
    print("One more episode")
}

var age = 16

if age >= 65 {
    print("You are a senior citizen")
} else if age >= 18{
    print("You are an adult")
} else {
    print("You are a minor")
}

var totalCash = 50000
var priceOfCar = 40000
var interestRate = 0.5

if totalCash >= priceOfCar && interestRate <= 0.6 {
    print("Buy the car")
} else {
    print("You cannot afford it")
}
