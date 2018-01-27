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
/*  If we change "var" on line 9 to "let", you'd get an error that value of isUserOne cannot be re-assigned/changed because it's a constant. updateCurrentUser would continue to print currentUser as "bettina" instead of changing it to "jordan".
*/


// array vs dictionary
// what is an array?
/* An array is a collection of stored values of same type in an ordered list. The same values can appear multiple times at different positions.
*/

// what is a dictionary?
/* An unordered collection that stores multiple values of the same type through key-value associations. Keys are of the same type and each value is associated with a unique key.
*/

// how do you add or remove an object from an array?
/* You can add an object from an array using .append(object) method or += for shorthand.
    var someInts = [Int]()
    someInts.append(4)
    someInts += [6,8]
 
   You can remove an object from an array by providing its index and using .remove(at:) method or for the last item using .removeLast() method.
*/

// how do you add or remove an object from a dictionary?
/* You enter key in order to add object to dictionary or to access its value.
 
    Dictionary <Key, Value>
    var nameOfIntegers = [Int: String]()
    nameOfIntegers[2] = "Two" will add [2: "Two"] to namesOfIntegers dictionary
    print(nameOfIntegers[2]) We typed in 2 as key to print its value "two"
 
    To remove an object from dictionary, you can use .removeValue(forKey:) method or set key's value to nil:
    var fullNamesOfPeople = [String: String]()
    fullNamesOfPeople["Bettina"] = "Prophete"
    fullNamesOfPeople["Jordan"] = "Guggenheim"
    fullNamesOfPeople["Steve"] = "Jobs"
    print(fullNamesOfPeople)

    fullNamesOfPeople.removeValue(forKey: "Bettina")
    fullNamesOfPeople["Jordan"] = nil
    print(fullNamesOfPeople)
*/

// what happens if you access an index of an array that doesn't exist?
/*  You would receive an "index out of range" fatal error.
*/

// what happens if you access a key in a dictionary that doesn't exist?
/* If you access a key whose value does not exist, compiler returns nil as value.
*/

// are arrays ordered?
/* Yes
*/

// are dictionaries ordered?
/* No
*/

// when would you use arrays or dictionaries? compare and contrast
/* One would use arrays when order is important.
 
   Dictionaries are used when order is not important and one wants hold multiple values by association (in pairs, which can be easily and rapidly retrieved by looking up a key/identifier).
*/

var fullNamesOfPeople = [String: String]()
fullNamesOfPeople["Bettina"] = "Prophete"
fullNamesOfPeople["Jordan"] = "Guggenheim"
fullNamesOfPeople["Steve"] = "Jobs"
print(fullNamesOfPeople)

fullNamesOfPeople.removeValue(forKey: "Bettina")
fullNamesOfPeople["Jordan"] = nil
print(fullNamesOfPeople)
print(fullNamesOfPeople["Bettina"])
print(fullNamesOfPeople["Jordan"])

var someInts = [Int]()
someInts.append(4)
someInts += [6,8]
print(someInts)
