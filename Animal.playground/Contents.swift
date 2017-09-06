//: Playground - noun: a place where people can play

import UIKit

//To Do
//First, create a class called Animal
//
//Give Animal a property "name"
//Give Animal a property "health" with a default value of 100
//Give Animal an initialization that takes in a name and sets the name property appropriately
//Give the animal a displayHealth method


class Animal {
    var health: Int
    var name: String
    
    init(name: String) {
        self.name = name
        health = 100
    }
    func displayHealth() {
        print(self.health)
    }
    
    
}
var animal1 = Animal(name: "Bunny")
print(animal1.name)
animal1.displayHealth()


///Next, create a subclass of Animal called Cat
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health


class Cat: Animal{
    override init(name: String) {
        super.init(name: name)
        health = 150
    }
// another way to do it
//    private var healthValue: Int = 150
//    override var health : Int {
//        get {
//            return healthValue
//        }
//        set {
//            healthValue = newValue
//        
//        }
//    }
    
    func growl() {
        print("Rawr!")
    }
    func run() {
        print("Running")
        self.health -= 10
        
    }
    
}

var myCat = Cat(name: "LIZ")
print(myCat.name)
print(myCat.health)
myCat.run()
myCat.run()
print(myCat.health)

//
//Next, create two subclasses of Cat - Cheetah and Lion

//Override the Cheetah's run method to print "Running Fast" and deduct 50 health
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)

class Cheetah: Cat {
    
    override func run() {
        print("Running Fast")
        self.health -= 50
    }
    
    func sleep() {
        if self.health < 200 {
            self.health += 50
        }
    }
}

var myCheetah = Cheetah(name: "Sila")
print(myCheetah.name)
print(myCheetah.health)
myCheetah.run()
myCheetah.run()
myCheetah.run()
myCheetah.sleep()
print(myCheetah.health)
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
//Override Lion's health to be 200

class Lion: Cat {
    override init(name: String){
        super.init(name: name)
        health = 200
    }
    
    override func growl() {
        print("ROAR!!!!")
    }

}

var myLion = Lion(name: "Fassy")
print("Lion name \(myLion.name)")
print("Lion health \(myLion.health)")
myLion.growl()

