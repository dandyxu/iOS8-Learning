//: Playground - noun: a place where people can play

import UIKit

//variables
var str = "Hello, playground"

str = "Hello, Apple"

var name = "Dandy"

name = "Welcome to Apple"

var unknownString:Int

unknownString = 3

var int = 4

3 * int

var a = 5

var b = a * 3;

var c:Double = 5 / 2

c * Double(int)

/***************************************/

var longSentence = str + " " + name;

var newString = "My job is \(int)"

var A = 3.5

b = 4

c = A * Double(b);

var testSentece = "\(A) times \(b) equals \(c)"

//arrays and dictionaries
var arr = [1, 2, 3, 4, 5]

arr[1]

arr.append(6)

println(arr)

arr.removeAtIndex(2)

println(arr)

arr.removeLast()

println(arr)

arr.removeRange(1...2)

var newArr = [1, 2.3, "Dandy"]

var emptyArr:[Int]

//dictionaries
var dict = ["name": "Dandy", "age":23, "gender": "male"]

println(dict["name"]!)

dict["hairColour"] = "black"

dict["age"] = nil

var Name = dict["name"]

var myString = "my name is \(Name!)"

var Name2 = "name"

var myString2 = "my name is \(dict[Name2]!)"

/***********************************/
//array challenge
var arr2 = [2,4,6,8]

arr2.removeAtIndex(0)

arr2.append(10)

println(arr2)

//dictionary challenge
var dict2 = ["name":"Dandy", "age": 23]

var nameChallenge = "name"

var ageChallenge = "age"

var dictChallenge = "my name is \(dict2[nameChallenge]!)" + " and " + "my age is \(dict2[ageChallenge]!)"


//If statement
var myName = "Dandy"

var time = 12

if myName == "Dandy" && time < 12 {
    
    println("Hello, Swift")
    
}else if myName == "Dandy" && time > 12{
    
    println("Hello, iOS")
    
}else {
    
    println("Hello, Xcode")
    
}

//remainder function
var remainder = 9 % 4

/***********************************************/
var x = 11

if x % 2 == 0 {
    
    println("X is even number")
    
}else if x % 2 != 0 {

    println("X is odd number")

}


//Loop
for var i = 3; i < 10; i++ {
    
    println(i)
    
}

for var i = 5; i <= 50; i = i + 5 {
    
    println(i * 5)
}

var arr3 = [1, 2, 3, 4]

for xx in arr3 {
    
    println(xx)
}

//add x in array
for (index, x) in enumerate(arr3){
    
    arr3[index] = x + 1

}
println(arr3)

/*************************************/
var arr4 = [3,4,1,6]

for (index, value) in enumerate(arr4){
    
    arr4[index] = arr4[index] / 2
}

println(arr4)

//While
var i = 2

while i <= 20 {
    
    println(i)
    i = i + 2
    
}

var arr5 = [6, 2, 9, 11,8,11,2]

var index = 0

while index < arr5.count {
    
    println(arr5[index])
    
    index++
    
}

var arr6 = [1,2,3,4,5,6]

var index1 = 0

while index1 < arr6.count{
    
    arr6[index1] = arr6[index1] - 1
    
    index1++
}

println(arr6)

//Is it a prime?
var number = 2

var isPrime = true

if number == 1 {
    
    isPrime = false
}else if number != 2 {

for var  i = 2; i < number; i++ {
    if number % i == 0 {
        
        isPrime = false
        }
    }
}
println(isPrime)







