//: Playground - noun: a place where people can play

import UIKit

//Given the following three variables write a for-in loop that will have the following output in the Assistant Editor.
//["Clubs": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Diamonds": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Hearts": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], "Spades": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]]

let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()

for i in 0..<suits.count {
    deckOfCards[suits[i]] = cards
}


print(deckOfCards)

//Should you expect the suits to print in the exact order you specified?
//No because we returning a dictionary
