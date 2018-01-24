import Foundation

// let vs var
// as a rule, every property both in local scope or a property on a class should be a let unless it must be modified

let bettinaUserName = "bettina"
let jordanUserName = "jordan"

var isUserOne = true
var currentUser = bettinaUserName

func updateCurrentUser() {
    currentUser = isUserOne ? bettinaUserName : jordanUserName
}

updateCurrentUser()
print(currentUser)

// Note because isUserOne is a var we can modify it on the line below
// change "var" on line 9 to "let"... what happens?
isUserOne = false

updateCurrentUser()
print(currentUser)

// array vs dictionary
// what is an array?

// what is a dictionary?

// how do you add or remove an object from an array?

// how do you add or remove an object from a dictionary?

// what happens if you access an index of an array that doesn't exist?

// what happens if you access a key in a dictionary that doesn't exist?

// are arrays ordered?

// are dictionaries ordered?

// when would you use arrays or dictionaries? compare and contrast
