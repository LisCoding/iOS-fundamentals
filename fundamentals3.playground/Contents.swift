//: Playground - noun: a place where people can play

import UIKit



//In this set of exercises, we'll be adding to our knowledge of the basic building blocks by incorporating Arrays.
//
//Complete the following exercises in a playground and upload your code below.
//Write a program that adds the numbers 1-255 to an array

func addNumberstoArray(){
    var myArray = [Int]()
    
    for i in 1...255 {
        myArray.append(i)
    }
    
    print(myArray)
}

//addNumberstoArray()


//Swap two random values in the array

//Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?
func randomSwap(arr: inout[Int])->[Any] {
    let index1 = Int(arc4random_uniform(UInt32(arr.count)))
    let index2 = Int(arc4random_uniform(UInt32(arr.count)))
    let temp = arr[index1]
    arr[index1] = arr[index2]
    arr[index2] = temp
    return arr
    
}
var arrVals = [2,3,4,5, 7,8, 1, 34, 56]
print(randomSwap(arr: &arrVals))


//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)


func randomSwap100Times(arr: inout[Int])->[Any] {
    for i in 1...100 {
        let index1 = Int(arc4random_uniform(UInt32(arr.count)))
        let index2 = Int(arc4random_uniform(UInt32(arr.count)))
        let temp = arr[index1]
        arr[index1] = arr[index2]
        arr[index2] = temp
    }
    
    return arr
    
}

print(randomSwap100Times(arr: &arrVals))
//Remove the value "42" from the array and Print "We found the answer to the Ultimate Question of Life, the Universe, and Everything at index __" and print the index of where "42" was before you removed it.


func removeVal(arr: inout[Int]) {
    for i in 0..<arr.count-1 {
        if arr[i] == 42 {
            arr.remove(at: i)
            print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        
        }
    }
}

var y = [1,3,4,42,56]

removeVal(arr: &y)

