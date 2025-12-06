import UIKit

// A loop in a computer program is an instruction that continually repeats until we want it to stop
// We use loops to perform tasks repeatedly, more efficiently
// We can also use loops to iterate thru data structures like arrays dictionaries

// MARK: For In Loops
// For a loop is used to repeat a specific block of code a specified number of times.
// There has to be a predefined number of times the loop will execute

for i in 1 ... 10 {
    print(i)
}

print("-------------")

for i in 0 ..< 10 {
    print(i)
}

print("-------------")

for _ in 0 ..< 10 {
    print("Hello there")
}

var shoppingCart = ["MacBook Pro", "AirPods Pro", "iPad Pro"]

for item in shoppingCart {
    print("Item name is \(item)")
}

print("-------------")

var prices = [10, 20, 30, 40]
let couponPrice = 5

for price in prices {
    print("Price with coupon is \(price - couponPrice)")
}

print(prices)

print("-------------")

for i in 0 ..< prices.count {
    let price = prices[i]
    print("Price is \(price), index is \(i)")
    
    prices[i] -= couponPrice
}

print(prices)

// MARK: While Loops

// A while is different from a for loop in that it is conditional based.
// While some condition is met, the loop will continue. It will stop when the condition is no longer valid

var countdown = 10

while countdown >= 0 {
    print("Count down is \(countdown)")
    
    if countdown == 0 {
        print("Launch the rocket!")
    }
    
    countdown -= 1
}

