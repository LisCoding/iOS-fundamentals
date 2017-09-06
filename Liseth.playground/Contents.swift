//: Playground - noun: a place where people can play

import UIKit

// Print 1-255 

func print1To255 () {
    for i in 1...255 {
        print(i)
    }

}

print1To255()



//print the ints and sum of 0-255

func printIntsAndSum() {
    var sum = 0
    
    for i in 0...255 {
        print(i)
        sum += i
    }
    print(sum)
}

printIntsAndSum()


//Print max

func printMaxOfArray(arr: [Int]) {

    if let maximun = arr.max() {
        print(maximun)
    }
    
}
printMaxOfArray(arr: [2,4,5,7])


// print odds

func odds() {
    
    for i in 1...255 {
        if i % 2 == 1 {
            print(i)
        }
    }
    
}

odds()


//Return array count greater than Y 
func returnArrayCount(arr: [Int], y: Int) {
    var count = 0
    for i in 0...arr.count-1 {
        if  arr[i] > y {
            print(arr[i])
            count += 1
        }
    }
    print(count)
}

returnArrayCount(arr: [2,4,6,1,7], y: 2)


// Print max, min, aver and values 


// return odds 
func returnOdds()->[Int]{
    var newArray = [Int]()
    
    for i in 1...255 {
        if i % 2 == 1 {
            newArray.append(i)
        }
    }
    return newArray
}

print(returnOdds())


//print Array 
func printArray(arr: [Any]) {
    
    for i in 0...arr.count-1 {
     print(arr[i])
    }
}

printArray(arr: ["hey", 2])


// Average of An Array 

func averageOfArray(arr: [Int]) {
    var sum = 0
    for i in 0...arr.count-1 {
        sum += arr[i]
    }
    let avg = sum / arr.count
    print(avg)
}

averageOfArray(arr: [5,5])


// Square Array values 

func squareArrayValues(arr: inout [Int])->[Int]{
    for i in 0...arr.count-1 {
        arr[i] = arr[i] * arr[i]
    }
    return arr
}

var input =  [1,2,3,4]
print(squareArrayValues(arr: &input))

//zero out any negative values 

func zeroOutNegativeValues(arr: inout [Int])-> [Int] {
     var arr = arr
    for i in 0...arr.count-1 {
        if arr[i] < 0 {
            arr[i] = 0
        }
    }
    return arr

}
var myArray = [2,-1,-5]
print(zeroOutNegativeValues(arr: &myArray))


// Shift values left

func shiftArrayValsLeft(arr: inout [Int]) {
    
    for i in 0...arr.count-2 {
        arr[i] = arr[i + 1]
    }
    arr[arr.count-1] = 0
    print(arr)
    
}

var input1 = [2,4,5,6]

shiftArrayValsLeft(arr: &input1)


// Swap string for array of negative values
func swap(arr: inout[Any])-> [Any] {
    
    for i in 0...arr.count-1 {
        if let num = arr[i] as? Int {
            if num < 0 {
                arr[i] = "dojo"
            }
        }
   
    }
    return arr
}
var x: [Any]  = [2,-2,3,-1]

print(swap(arr: &x))

