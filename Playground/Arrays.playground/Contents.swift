import UIKit

var shoppingCart = [String]()
var names = ["Lewis", "Charles", "Max"]
var prices = [24, 12, 35, 500]

shoppingCart.append("Go Pro")
shoppingCart.append("Fruits")

let driver1 = names[0]
let driver2 = names[1]
let driver3 = names[2]

names.remove(at: 2)
names

prices.remove(at: 1)
prices
 
names.insert("Checo", at: 0)

prices.removeFirst()
prices.removeLast()
