//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Dandy"

for character in newString{
    
    println(character)
    
}

var newTypeString = NSString(string:newString)

newTypeString.substringToIndex(5)

newTypeString.substringToIndex(10)

newTypeString.substringWithRange(NSRange(location: 3, length: 5))

if newTypeString.containsString("Dandy") {
    
    //Dandy is there
    println("This is Dandy")
    
}

//Same function of split() in Java and explode in php
newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString