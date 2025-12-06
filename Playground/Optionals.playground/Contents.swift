import UIKit

// Module 9 - Optionals

//An optional value has two potential states. It can either contain a value, or be nil
//
//Optional values allow us to code more safely when working with values that may or may not have a value
//at particular time in the program or application


var username = "batman"
var bio: String?


@MainActor func getUserInfo() {
 print("Username is \(username)")
 print("Bio is \(bio)")
    // this is unwrapping our optional value and extracting the value
    
    if let unwrappedBio = bio {
        print("User bio unwrapped is \(unwrappedBio)")
    }
    
    print("------------------")
}

getUserInfo()

bio = "Dark Knight"

getUserInfo()
