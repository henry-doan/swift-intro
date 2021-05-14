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













// Functions, conditional and looping
// if / else
// parentheses aren't required for condition
// but can use for clarity
// need { } even with one single line if
// condition must be true or false value
// type bool
var total = 34
if total > 10 {
   print("under 10")
} else {
    print("over 10")
}

// if car == "Tesla"
// if myInt != nil
// if userIsLoggedIn
// if bonusEnabled

// == != > < >= <= && ||

// switch
var mem = "MB"

switch mem {
case "kB":
    print("kilobyte")
case "MB":
    print("megabyte")
case "GB":
    print("gigabyte")
case "TB":
    print("terabyte")
case "PB":
    print("petabyte")
case "EB":
    print("exabyte")
default:
    print("Error not recognized mem")
}

// let us look at one thing
// set of { } no ( )
let volcanoExpIndx: Int // 0 - 8
volcanoExpIndx = 3

switch volcanoExpIndx {
case 0:
    print("Ehhh")
case 1:
    print("Gentle")
    print("plume of 1 km")
case 2:
    print("Boom Expolosion!")
case 3:
    print("Catastrophic")
case 4:
    print("Cataclysmic")
case 5:
    print("Paroxysmic")
case 6:
    print("Colossal")
case 7:
    print("Super Colossal")
case 8:
    print("Mega Colossal")
    print("End game")
default:
    print("Not a recognize")
//    break
}

// in swift each case must contain executable code, no just comments, no fall through
// no need break at every case
// could do multiple cases on the same case with a comma
// works well with strings and ints
//switch level {
//case 1, 2, 3:
//    print("Beginner")
//case 4, 5, 6, 7:
//    print("Hard")
//default:
//    print("Incorrect Level")
//}

// or with num can do a range
//switch level {
//case 1...3:
//    print("Beginner")
//case 4...7:
//    print("Hard")
//default:
//    print("Incorrect Level")
//}
// ... range op start and end and include both num on each side
// must be exhaustive
// executable code on each case
// no auto fall through

// loops, only 3 ways
// condition has to be true or false
// while
//while items > 0 {
//
//}

// similiar to the do while where the code is ran at least once
//repeat {
//
//} while items > 0

// for loop -> for in
// for (int i = 0; i < 10; i++)
// initialize, condition and afterthought
// not work in swift
//for item in items {
//
//}

//let words = ["apple", "pen", "noise", "grey"]
//for word in words {
//    print(word)
//}

//for num in 0...10 {
//    print(num)
//}

// range op ... include both sides, closed range op
// ..< include the one on the left but one less than the right, half-open range op
//1...3 1, 2, 3
//1..<3 1, 2

//the sequence always goes up from small to large, they don't go in reverse
// goes step by step at a time
// to go from multiple steps we would stride
// strideto, not include end seq
// stridethrough, include end seq
//for num in stride(from: start, to: end, by: skip)

//for num in stride(from: 1, to: 20, by: 5)

// can go backwards
//for num in stride(from: 100, to: 0, by: 10)


// string interpolation, construct some text
// other lang can use concatenation, works in swift
// let fullName = first + " " + last
// var colors = "red"
// can use += to append
// colors += "blue"
// colors += "green"
// anything that isn't a string must be parse into a string String()
// interpolation: \()
// let msg = "Now playing \(track) from \(artist) is \(duration / 60) \(duration % 60)s long"
// convert stuff that isn't a string to a string
// can do expressions, and with eval first then print
