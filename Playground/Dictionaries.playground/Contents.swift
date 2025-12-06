import UIKit

// MARK: - Creating Dictionaries

var nameToEmailDict = ["John": "jondoe@gmail.com", "Tom": "tomlong@gmail.com"]
var blankDict = [String: String]()
var nameToAgeDict = ["John": 32, "Tom": 24]

// MARK: = Dictionary Lookups

let johnEmail = nameToEmailDict["John"]
let tomAge = nameToAgeDict["Tom"]

// MARK: = Updating Dictionaries

nameToEmailDict["John"] = "johndoe@yahoo.com"
nameToEmailDict
