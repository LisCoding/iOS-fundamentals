//: Playground - noun: a place where people can play

import UIKit

//Heads or Tails
//In this exercise, we are going to focus on writing clean and organized code using functions! When using functions it is important to be descriptive and to organize your code to have a separation of concerns. Let's see this in action:
//
//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!"
//Next have the function randomly pick either "Heads" or "Tails"
//Have the function print the result
//Finally, have the function return the result

func tossCoin() -> String {
    print("Tossing a Coin!")
    let coin = ["Heads", "Tails"]
    let toss =  Int(arc4random_uniform(2))
    let result = coin[toss]
    print(result)
    return result
}

tossCoin()



//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input
//Have the function return a Double that reflects the ratio of head toss to total toss

func tossMultipleCoins(coins: Int) -> Double {
    var headsCounts = 0.0
    var tailsCounts = 0.0
    for i in 1...coins {
        var result = tossCoin()
        if result == "Heads" {
            headsCounts += 1
        } else {
            tailsCounts += 1
        }
    }

    var ratio: Double = headsCounts/tailsCounts
    return ratio
    
}

print(tossMultipleCoins(coins: 10))