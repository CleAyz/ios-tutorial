import UIKit

// MARK: Declaration

func greet() {
    print("Hello")
}

greet()

// MARK: Input param

func doubleValue(x: Int) {
    print(x * 2)
}

doubleValue(x: 3)

// MARK: Return a value

func tripleValue(x: Int) -> Int {
    return x * 3
}

let result = tripleValue(x: 9)
print(result)

func addNumbers(x: Int, y: Int) -> Int {
    return x + y
}

addNumbers(x: 3, y: 5)

func getAge(birthYear: Int) -> Int {
    let currentYear = 2025
    let age = currentYear - birthYear
    return age
}

func displayAge(birthYear: Int) {
    let age = getAge(birthYear: birthYear)
    
    print("You are \(age) years old")
}

displayAge(birthYear: 1994)
