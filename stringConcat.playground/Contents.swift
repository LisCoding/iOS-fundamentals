//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//str += " Liz";
//var name:String = "Liseth"
//
//var num:Int = 5
//
//print("hello Lis")
//print(str)
//
//print("The maximum value \(Int.max)")
//print("The minimum value \(Int.min)")
//
//
//print("The maximum value \(Int32.max)")
//print("The minimum value \(Int32.min)")
//

var myDict2 = [String: Int]()

print(myDict2)

var dictionary = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]

//var jerseyNumber = dictionary["Kobe"]
//print(jerseyNumber) // Optional is not unwrapped


//  SAVE UNWRAPPING!!!!!

if let jerseyNumber = dictionary["Kobe"] {
    print(jerseyNumber)
}


//the function doesnt modify the outer variable

var myNum = 1
func changeMyInt(someInt: Int) {
    var someInt = someInt
    someInt = someInt + 1
    print(someInt)
}
changeMyInt(someInt: myNum)     // => 2
print(myNum)                   // => 1



//MODIFYIN THE OUTER VARIABLE
var myInt = 1
func changeMyInt(someInt: inout Int) {         // must specify "inout"
    someInt = someInt + 1
    print(someInt)
}
changeMyInt(someInt: &myInt)                            // must pass in the variable with "&" symbol
print(myInt)

//func sayHello(name: String = "buddy") {
//    print("Hey \(name)")
//}
//// We can call it without providing any arguments and the default value will be used...
//sayHello()
//// ...or we can call it with an argument and that argument's value will be used
//sayHello(name: "Yoda")

func sayHello(name: String = "buddy") -> String {
    return "Hey \(name)"
}
var greeting: String?
greeting = sayHello()
print(greeting)

