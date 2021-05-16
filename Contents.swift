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


// function
// () are required and these mean that there are no params or if there is they would be in the ()
//func showMsg() {
//    print("hello World")
//}
//
//showMsg()

// params need a type annotation
// need a argument label of whats the param
//func showMsg(num: Int, name: String) {
//    print("hello World \(num)")
//}
//
//showMsg(num: 2)
// showMsg(num: 2, name: "bob")
// function parameters are constants, and immutable by default
// can't change params, let
// can re assign it to a variable then can change it

// funciton return types comes after the function name and after the parameters and type
// return arrow then datatype
//func basFunc() -> String {
//    return "adsfaf"
//}

// type inference works everywhere
// function without return values
// void no return value
//func myFunc() -> Void {
//
//}

// function type (param type ) -> return type
// void for explicit return nothing
// function without return value, a function that takes no parameters and return nothing () ->
// calling a function but ignores any returned value will gereate a warning in the complier
//_ = calc()
// _ it know this is calling a function but ignoring a value, we don't need it so we are explicitly ignoring it and warning goes away. intendtionaly ignore or suppress something


//func showMsg(msg: String) {
//    print("hello World \(msg)")
//}
//
//showMsg(msg: "!!!")

// there is a space under after _ so we don't need the param name
// can do them for multiple params
// but recommended for param labels
//func showMsg(_ msg: String) {
//    print("hello World \(msg)")
//}
//
//showMsg("!!!")

// can change the param name to be called something else
// if there are two names then first is argument label then second is the parameter name
//func showMsg(message msg: String, number num: Int) {
//    print("hello World \(msg)")
//}
//
//showMsg(message "!!!", number: 3)
// name funcitons wiht a noun verb so
// show(msg) is a better function name
//type(of: String)
// think about what the entire call would look and act like





// Enumerations, making our own types
// making own datatype so captial first letter
// enumeration case, not a conditional case
// can do multiple cases or one line with commas
//enum MediaType {
//    case book
//    case movie
//    case music
//    case game
//}

//enum MediaType {
//    case book, movie, music, game
//}

// use like a datatype
// var itemType: MediaType
// itemType = MediaType.game
// use the . op to chose the enum

// short hand of enum with a var
// itemType = .game

// if use in a case we have exhausted all options and don't need a default

//switch itemType {
//case .movie:
//
//case .game:
//
//case .music:
//
//case .book:
//}

// if we add another enum, there is a error of thw switch no longer being exhaustive

// raw values
// can pair it up with a value of any datatype
//enum BottleSz: String { // String, Int, Double ...
//    case half = "23L"
//    case small = "11L"
//    case big = "110L"
//}
// can grab both values
//var myBottle: Bottle = .small
//print("Your \(myBottle) is  \(myBottle.rawValue)")

// customizable values or Associated values

//enum MediaType {
//    case book(String)
//    case movie(String)
//    case music(Int)
//    case game(String)
//}
//var firstItem: MediaType = .movie("Drama")

//to get to them you can use the let, and can use them later
//switch itemType {
//case .movie(let genre):
//
//case .game(let title):
//
//case .music(let duration):
//
//case .book(let author):
//}

//Structures / Struct, all datatypes are structs here
// give common data a struct and encapsulate
// upper camelcase for the name
// has properties
// can add behavior
//struct Movie {
//    var title: String
//    var director: String
//    var year: Int
    // method of the struct
//    func summary() -> String {
//        return "asdfasdf asdf asdf asdf"
//    }
//}

// memberwise initializer of create something of this type, it has this props
// fill out all the props now
//var first = Movie(title: "Star Wars", director: "Lucas", year: 1980)
// can make make variables of the type
//var second = Movie(title: "Space Wars", director: "Lucas", year: 1990)

// different instances of the types
// access with . op
// print(first.title)
// print(second.title)
//second.year = 2000
// first.summary()
// no inheritance with struct, so can't inheirt from other struct

//Dictionary, map, symbol table, associative array
// has values but access by a unique key, no dup key but dup vals works
// strongly typed, but two types not one, one type for keys, another for values
// dictionary literal format
//var compass = [
//    "n": "north",
//    "s": "south",
//    "w": "west",
//    "e": "east"
//]
// can grab values  but [ ] to look up a key
//compass["n"] // what is returned is a optional string

//if let result = compass["w"] {
//    print(result)
//} else {
//    print("No match found")
//}

// add or change with the same [ ]
//compass["sw"] = "south west"
// if exist then it will change if not than it will add

// remove by setting to nil, remove key value pair
//compass["s"] = nil

// if the type and value are for later then we can stub out
//var ele: [String: String]
//var emps: [Int: String]
// unordered collection

// iterate through the dictionary
//for path in compass{
//    print(path)
//}
// both key and value

// print the key and value separate
// this is a tuple
//for (abr, path) in compass{
//    print(abr)
//    print(path)
//}

//Tuples group values together, several elements together
// values in ()
//(value1, value2)
//
//let camType = "Canon"
//let photoMade = true
//var shutterSpeed = 60
//var iso = 640
//var zoom = "2x"
//
//var basicTuple = (zoom, iso, camType)

// can mix literal, constants and vars
//var nextTuple = ("asdfas", photoMode, 2323, zoom)

//func rand() -> (String, Int)
// return(title, 02)

// get into the tuple or decompose, we can use index val, think as array
//rand.0

//func rand() -> (title: String, amt: Int)
// return(title, 02)

//  grab by name
//rand.amt

// or do it on the let
//let (title, amt) = rand
// when we loop through a dictionary, we have a tuple of a compound item of the key and value




//Closures
// gen, sorrting, filtering, working with collections
// area spec, animation, fetching data, callbacks, completion handler
// task specific, working with user interface controls
// it let us takes lines of code and group it together to use elsewhere in out program
// function is a type of closure
// has blocks of code but don't have a name or need one
// {

//}

// write a function a block of code you intend to call
// closure a block of code you intend to pass
// call a function that takes a closure
//myFunc({
//    print("adsfasdf asdfasdf")
//})

// similar to blicks, lambdas function literals, and anonymous functions
// of the the docs wants to also include the closure and it would list them out on how too
// should show how to sort
//if firstBook.readingAge <= secondBook.readingAge {
//    return true
//} else {
//    return false
//}

//if need, helpl, start off with a function that does it
//func comparTwoBooks(firstBook: Book, secondBook: Book) -> Bool {
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    } else {
//        return false
//    }
//}

// since functions are a type of closure it can work
//let ageSortedBooks = allBooks.sorted(by: comparTwoBooks)
// in this case the function doesn't need to be called with ()
 
// first step is to remove func and name of func
// then move the params and return types to the curly
// and a in, separate the function type to what we want to exec
//{
//    (firstBook: Book, secondBook: Book) -> Bool
//    in
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    } else {
//        return false
//    }
//}
// will getting a warning until its passed to the right area

//let ageSortedBooks = allBooks.sorted(by: {
//    (firstBook: Book, secondBook: Book) -> Bool
//    in
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    } else {
//        return false
//    }
//})
// pass it to the argument

// can shorten even more
// can remove the function type becuase it redundent
//let ageSortedBooks = allBooks.sorted(by: {

//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    } else {
//        return false
//    }
//})

// by default the closure will already assign the param as $ index
// generate implicit auto names for the params, goes by index base
// uses type inference to know the type
//let ageSortedBooks = allBooks.sorted(by: {
//    if $0.readingAge <= $1.readingAge {
//        return true
//    } else {
//        return false
//    }
//})

// can do a trailing closure to have it on the outside since it is already expecting a closure
//let ageSortedBooks = allBooks.sorted(by:) {
//    if $0.readingAge <= $1.readingAge {
//        return true
//    } else {
//        return false
//    }
//}

//can also remove the (by: too)
//let ageSortedBooks = allBooks.sorted {
//    if $0.readingAge <= $1.readingAge {
//        return true
//    } else {
//        return false
//    }
//}
// can clean up more with a expression
//let ageSortedBooks = allBooks.sorted { return $0.readingAge <= $1.readingAge }

// and if the whole closure is all in one line then we can omit the return
//let ageSortedBooks = allBooks.sorted { $0.readingAge <= $1.readingAge }

//let nameSortedBooks = allBooks.sorted { $0.title <= $1.title }
// watch out for casing for string so convert to upper or lower

//let nameSortedBooks = allBooks.sorted { $0.title.uppercased() <= $1.title.uppercased() }

// works for diff methods
// let booksFor10 = allBooks.filter { $0.reading < 10}





// Classes and objects
// have to set teh var to initial values, like in the initalizer or default values
//class Appliance {
////    properties
////    instance level prop of the class
//    var model: String = ""
//    var plug: String = ""
//    var year: Int = 0
//    var cap: Int?
//
//    // methods
//    func details() -> String {
////        self is the current instance, and opt but recom
//        return "This is a \(self.model), \(self.year)"
//    }
//}
//
//// create instance of a class
//// use . to access or change values
//var kettle = Appliance()
//kettle.model
//kettle.model = "LG"

//class Appliance {
////    properties
////    instance level prop of the class
//    var model: String
//    var plug: String
//    var year: Int
//    var cap: Int?
//
//    initializer, no need func, called when the class is claaed with ()
//    init() {
//      self.model = "base model"
//      self.plug = "american"
//      self.year = 2000
//    }
// have other initilizers with diff params
//    init(cap: Int){
//      self.model = "base model"
//      self.plug = "american"
//      self.year = 2000
//      self.cap = cap
//     }
// deinitializer, only one
//deinit {
//    // clean up code
//}
//
//    // methods
//    func details() -> String {
////        self is the current instance, and opt but recom
//        return "This is a \(self.model), \(self.year)"
//    }
//}
// can create different initstances with different para,s
// then use . to access and change
//swift uses ARC automatic Reference counting and manage our memory for us, arc handles if the item is our of scope or not in use it deallocate and free up the memory for it
// no need to call the deinit it will be called anyways after it gets to the level


//structs props, methods, init, protocols, subscripts, all datatypes are structs not classes

// changing a class to a struct works
// can be instance the same way
// some diff
// struct Appliance {
//    // props
//    var manu: String
//    var model: String
//}

// create a new instance
//var toaster = Appliance(manu: "me", model: "x2180")
// creates a init for us called memberwise initializer
// if we don't want this we create our own

// class Appliance {
//    // props
//    var manu: String
//    var model: String
//}
//var toaster = Appliance(manu: "me", model: "x2180")
// we lose the memberwise initializer, and need to init
// classes support inheritance
// structs do not
//structs and enums, value types, assign to a new var or constant, the value is copied, pass to a func then the value is copied, imutable, can't be def as a let
//classes ref types, assign to a var or constant or pass to a func, not copied, ref is passed , change, mutable, can set them to constanst and ref them as so but can't reassign

//we can check if the items are ref the same thing with the identity operator with only working in classes or objects of a class
//
//if first === second
// instance for both classes and structs

// inheritance
// final class Appli { // would not allow overriding at all
//class Appli {
//    var make: String
//    var model: String
//
//    init() {
//        self.model = "default"
//        self.make = "default"
//    }
//
//    // would allow no override
//    final func printDets() {
//        print("Make: \(self.make) \n Model: \(self.model)")
//    }
//}

// to inheirt it would be the new class with a : and the parent
// type of relationship
// toaster type of applicance
// parent or child or superclass or subclass
// not common
//class Toaster: Appli {
//    // new props
//    // no init in super class so need one in sub class
//    // could fix with default val or init in this class, but with the relationship, we would need to override the init
//    // this will add on to the init not replacing it, and would go from sub to super
//    // use keyword super to access super class
//    var slices: Int
//
//    override init() {
//        self.slices = 2
//        super.init()
//    }
//
//    // new methoding
//    func toasting() {
//        print("...bing!")
//    }
//}

// can access anything from the superclass
//var toast = Toaster()
//toast.make = "adsff"
//toast.model = "sdfasd"
//toast.printDets()
//toast.toasting()


// Extensions allows us to use different props of esiting types without inheritance and no need to override in the class, works with classes, structs and enums, can add behavior to anything
// add own own methods to the datatype
// key work and then the name of the type we want to extend
// then can add code blocks to do what we need
//extension String {
//    func removeSpace() -> String {
//        let filteredChars = self.filter{ $0 != " " }
//        return String(filteredChars)
//    }
//}
// then can call it on the type after
//print("adsfa afadsf af asd fasdf asf".removeSpace())

// all props that are in classes, enum and structs are stored props, that store their own values for each instance
// computed property that calc a value every time we ask for it
// looks like a normal prop
//class Player {
//    // stored prop
//    var name: String
//    var lives: Int
//    var killCount: Int
//    var bonus: Int?
//    var penality: Int?
    
    // computed props
    // only work with var and not a constant
//    var score: Int {
        // read only with just get
        // if its just a get then can remove the get block and have the return
//        get {
//            return(killCount * 1999) + bonus + (lives * 3000) - penality
//        }
//        set {
//          print("\(newVal) score")
//        }
//    }
//
//    init(name: String) {
//        self.name = name
//        self.lives = 5
//        self.killCount = 0
//        self.bonus = 0
//        self.penality = 0
//    }
//}
//
//let newPlayer = Player("bob")
//newPlayer.name
//newPlayer.score

// but if we try to set it we need a set block


// Protocols
// swift is a protocol oriented programming language
// a set of rules or code of behavior
// a simple list. has a name, list of methods, names, params and return types, list of props, name, type get/set
// help with gen purpose, creating collections, comparing instances, converting, sorting, debug,
// or app specific, loading, saving data, spell checking and resizing uis
// usually don't write your own but use some that are alreay exist
// read docs, of what is required and how its used
//protocol myProto {
//    // what methods
//
//    // what props
//}
// can use on a class, struct or enum and add the name of the protocol
// make sure you have all the requirements
//class Player: CustomStringConvertible {
//... var description: String = "test" // literal works
// and have it be a extension
// only can inherit one superclass
// but can have multple protocols
//class Player: Superclass, CustomStringConvertible, more proto {

// making your own
//protocol MyProto {
//    // methods
//    func showMessage()
//
//    // props
//    // need a { }  to have get or set or both
//    var name: String { get set}
//}

// adopt / conform, what part of the process you are focus on
// now adopting it
//struct myStr: MyProto {
//    func showMessage() {
//        print("now conforming")
//    }
//}

//Error handling
// dealing with recoverable errs
// define it, what is it, connection, save or calc
    // swift does not have a error type
    // can built errors from any data type
// we can use the error protocol and don't need to do anything
// mark this enum
//enum ServerErr: Error {
//    case noConnection
//    case serverNotFound
//    case authRefused
//}

// if a function might throw and error we need the throws proto
// if a throw happend it like a return and wont do any mroe code
//func checkStat(serverNum: Int) throws -> String {
//    switch serverNum {
//    case 1:
//        print("No Connect")
//        throw ServerErr.noConnection
//    case 2:
//        print("Auth failed")
//        throw ServerErr.authRefused
//    case 4:
//        print("Server 3 running")
//    default:
//        print("No server with that")
//        throw ServerErr.serverNotFound
//
//    }
//    return "Success!"
//}
// handle it
// call the function doesn't work normally now
//do {
//    try checkStat(serverNum: <#T##Int#>)
//} catch err {
//    print(err)
//}
// put try infront of the method call
// the catch already has the error param def
// but can have different catch blocks for different kinds of errors
// good practice of doing all catch and have a gen one
//do {
//    let result = try checkStat(serverNum: 1)
//
//} catch ServerErr.authRefused {
//    print("need a login")
//}
//catch {
//    print("The problem \(error)")
//}

//let result: String ?
//do {
//    result = try checkStat(serverNum: 2)
//} catch {
//    result = nil
//}
// this would be a better alt
//let result = try? checkStat(serverNum: 2)

// throw it, where and when can it happen
// handle it, what are you going to do about it

//Guard and defer
//guard is like is else
//guard itemsReq < stock else {
//    print("no can do")
////    return
//}
// good use for if ther are a lot of options in a if or a if let and if let in embbeded than its the pyramid of doom
// what we hope if true and if its not than we exit really quick
// check boolean conditional
// must have a else
// if its true than it would move on
// or it wikll do the else
// else must have a hard exit
// like a return, throw, break, continue
//guard some-condition-is-need-to-be-true else {
//    what-we-do-when-it-isn't
//}
// optional binding with guard
//guard let unwrappedName = optName else {
//    return
//}
//then optName has a value
// if there is multiple than can be with commas

//guard let unwrappedName = optName,
//    let unwrappedAmt = optAmt
//    else {
//    return
//}

// defer
// clean up resources
// will run onces the resource is done or exit at end
//defer {
//
//}
//defer {
//    cart.close
//}
