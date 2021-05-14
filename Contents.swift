var playerName = "bob"
// user lower camel case for vars
// var are type strict
var age = 23
var temp = 65.3
var activeMemb = true
// string, int, double, bool

// playerName = 99 error
// var is required and only way to create variables
age = age + 5
// bottom button of debug and run and stop program

// Repl , read eval print loop
// in terminal you can type swift and it will do a repl
// lldb is a debugger tool for swift
// :quit to exit

// swift is a complied language into machine code

//var bonusScore
var bonusScore: Int
// if we have a var with no assingment, we need to tell swift that there is no assignment yet, and have a colon and the type of the datatype of Int String Bool Double Float UInt Character, called type annotation, Array Dictionary Set
// you can do the type annotation and set a value but no point to do that
// dates, time url, file button, document image type need to be import from other frameworks to work with
// type safe

// var to make variable
// let make a constant, set the value once, any reassign with cause error
// same rules as var
func simpleFunc() {
    // make new variable
//    var msg = "Should this be a var or let?"
    
// xcode pops up a warning of since this value isn't changed then might be a let
    
//    print(msg)
}

// constant dont require value at complile time, the can be calc at runtime
// must be initialize to a value before use

// operators
// ?? ... ..< -> ! ?
// ++ -- not in swift
//let a = 5
//let b = 4
let a = 3.4
let b = 4.4

//let result = a + b
let result = a / b
// since a and b are Int then it will think result is Int
// can't cast like result: Double would cause err
// in swift we don't have implicit conversion btwn diff types

// some implicit converiosn, coercion is often common in other languages
// find type of a item
//type(of: <#T##T#>)

var score = 1 // Int
var highScore = 100.0 // Double

//highScore = score // error because of type
highScore = Double(score) // then would cast score to double
// can do with all datatypes here and there
// not all conversion makes sense
// can lose info
// not always work

// in swift the var and constant are not default to a value

// optional, define type safe vals, where there might be no val at all and add the ? after the type annotation

var middleName: String?

var dayTilTrip: Int?
// no will be nil
// type safe
// may have no value at all
// contain the value or nothing or nil
// nil no value
// can be set to nil
// nil the same as null in this case
// can't treat a opt as a nonopt

var regInt: Int
var optInt: Int?

regInt = 100
optInt = 100

//regInt = nil cause an err
optInt = nil

regInt = regInt + 2
//optInt = optInt + 2 erro becuase optional int pllus 2
// is it nil or not nil, has val, then if value then unwrapping to get to a value and only if there is a value
//if optInt == nil {
//
//}

if optInt != nil {
    // how we unwrap with !
    // force unwrapping
    // now that there is a value to use
    var unwrappedInt = optInt!
    
    unwrappedInt = unwrappedInt + 43
    print(unwrappedInt)
}
// force unwrapping on a optional that is nil is a runtime error and crash the program

// another way to do it
// let unwrapp int equal int
// optional bining
if let unwrappedOptInt = optInt {
    print(unwrappedOptInt)
} else {
//     there is no value
}


//Array, an ordered collection of item by index zero base
//    - type safe
//    - mutable with var
//    - immutable using let
//Dictionary, a Collection of key/value pairs
//Set, an unordered collection of items
// all built int

// array of strings
var names = ["bob", "jill", "joe", "bill", ]
// can't mix value
// can brake into another line for readability
// can have trailing commas
// eye icon on the array in the results is to view more on the array
// round rect, show same infor as eye but embed in code
// grab by index with []
let mainName = names[0]
// can change the value if the variable is var
names[0] = "chris"

// add a new element
names.append("mike")
// can have same values
names.append("mike")

// to remove an element
names.remove(at: 3)
//names.removeAll()
//names.removeLast()
//names.removeFirst()
// some will return the value removed
let rmEle = names.removeLast()

// type annotation for arrays of string or other datatype
var myStrArr: [String]

var myIntArr: [Int]
// no container yet
// until
myIntArr = []

// or var myIntArr: [Int] = []
// apply to sets and collections too
