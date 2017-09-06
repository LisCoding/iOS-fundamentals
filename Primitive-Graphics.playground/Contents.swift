//: Playground - noun: a place where people can play

import UIKit



//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

struct Point {
    var x: Double
    var y: Double
    
    func printValues() {
        print("x equals, \(x)")
        print("x equals, \(y)")
    }
}

var myStruct = Point( x:10, y: 90)
print(myStruct.x)
print(myStruct.y)
myStruct.printValues()

///Create a Line struct that has a "Start" and "End" property both of type Point

struct Line {
    var start: Point
    var end: Point
    
    //In the Line struct add a function to return the Length of the created line as a Double.

    func lengthOfLine() -> Double {
        let x = start.x - end.x
        let y = start.y - end.y
        let length = sqrt(pow(x,2) + pow(y,2))
        return length
    }
}

var point1 = Point(x:5.6, y:3.0)
var point2 = Point(x:10, y:7)
var point3 = Point(x: 4.5, y: 12.0)
var myLine = Line(start: point1, end: point2)
print("Line length is \(myLine.lengthOfLine())")

//Create a Triangle Struct that contains a property called "Points" which is an array of type Point


struct Triangle {
    var points: [Point]
 

//(Optional) Notice this optional can be quite hard! Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
    func areaOfTriangle() -> Double{
        let a = Line.init(start: points[0], end: points[1]).lengthOfLine()
        let b = Line.init(start: points[1], end: points[2]).lengthOfLine()
        let c = Line.init(start: points[2], end: points[0]).lengthOfLine()
        
        let s = (a + b + c)/Double(2)
        let area = sqrt(s*(s-a)*(s-b)*(s-c))
        return area
    }

}

var myTriangle = Triangle(points: [point1, point2, point3])
myTriangle.areaOfTriangle()

print("Area of my triangle is \(myTriangle.areaOfTriangle())")





