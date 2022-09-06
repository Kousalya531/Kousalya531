import Foundation

/* Mobile Computing - iOS Fall 2022 Assignment 01 */

/* When you open this file in Xcode, it is normal that you see errors in the source code. */

//**************** QUESTION 1 ****************

// 1.a) Declare a variable called distance of type Double, using type annotation.

var a : Double

 
// 1.b) Declare a constant called maxWeight of type Int, with a value of 130, using type annotation.

let maxWeight = 130
 
// 1.c) Print "Your max weight is xxxx pounds.", replacing the xxxx with the value of maxWeight. Use String interpolation.

print("Your max weight is \(maxWeight) pounds.")
print("-----------------------------------")
 
// 1.d) Assign 8,400,428,917 to a variable largeInt and print it. Use the Swift's ability to write large numbers so that they are easy to be read. Refer to Tuples worksheet (problem 4).

var b : UInt64
b = 8400428917

print(b)
print("-----------------------------------")
// 1.e) Write Swift code to print the below text in one single print statement.
            /*
                Hello, All
                Welcome to Mobile Computing - iOS Fall22..!
            */

print("Hello, All \nWelcome to Mobile Computing - iOS Fall22..!")

print("-----------------------------------")
 
//**************** END OF QUESTION 1 ****************

 
//**************** QUESTION 2 ****************

// 2.a) Predict what will happen when you try and execute below three statements? Make sure to uncomment the third line.
 
var x = 25
var y = 30.0
//y = x

 

// 2.b) Fix the error in the question 2.a
 
//**************** END OF QUESTION 2 ****************

 var z = Double(x) //type conversion of double to int
//print(z)
//y = z
//print(y)
//**************** QUESTION 3 ****************

// 3 Consider a point (x1,y1), find whether the point is inside or outside the rectangle.
/*
            ------------------------ (highX,highY)
            |                         |
            |                         |
            |                         |
            |                         |
    (lowX,lowY) ----------------------
 */
 
// with lower left corner (lowX,lowY) and upper right (highX, highY).
// Depending upon the cases print "inside" or "outside"
var x1 = 1
var y1 = -3
var lowX = -3
var lowY = -2
var highX = 1
var highY = 2

let ap = (x1,y1)


if((x1>lowX && y1>lowY ) || (x1<highX && y1<highY)){
    
    print("Inside")
}
else{
    print("Outside")
}
print("-----------------------------------")
 
//**************** END OF QUESTION 3 ****************
 
//**************** QUESTION 4 ****************

// Using loops
// 4.a) Print the numbers from -n to 0 in alternative order i.e., one number from the left side (starting with -n) and one number from the right side (starting from 0).
// declare var n = 9
var n = 9
var m = 0


var s : String = ""
for _ in stride(from: -9, to: 0 , by: 2)
{
    s = s+" "+String(-n)+" "+String(m)
    n = n-1
    m = m-1
}
print(s)


// expected output is -9 0 -8 -1 -7 -2 -6 -3 -5 -4

print("-----------------------------------")

// 4.b) Let's say there is an n x n grid. We want to connect the diagonals of the grid
// such that when we print the grid it prints a cross pattern like the format shown below.
// To get the required output, pick special symbols by going to Edit > Emoji & Symbols in Xcode.
// Search for "Shooting star" to get the star symbol, and "white medium square" for the white square symbol.
// Note : Your code should work for any odd value of n, for example, 1, 9, and 147.
// Hint : Use terminator in print statements and loops.
// Sample output for n = 17

//🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠
//◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️
//◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️
//◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️
//◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️
//◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️◻️◻️🌠◻️🌠◻️◻️◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️◻️◻️🌠◻️🌠◻️◻️◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️
//◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️
//◻️◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️◻️
//◻️◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️◻️
//◻️◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️◻️
//◻️🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠◻️
//🌠◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️◻️🌠

var p = 17
for i in 1...p{
    for j in 1...p{
        if(i==j || i==p-j+1){
            print("🌠", terminator: "")
        }
        else{
            print("◻️", terminator: "")
        }
        
    }
    print()
}
print("-----------------------------------")

//**************** END OF QUESTION 4 ****************
 
//**************** QUESTION 5 ****************

// Using Strings
// 5.a) Replace the character "a" in original string with "@" and print the new string.
var original = "This string contains a very few a's."
print(original.replacingOccurrences(of: "a", with: "@"))
print("-----------------------------------")

// 5.b) Declare 2 strings str1 and str2 as "hello, bearcats!" and "HELLO, BEARCATS!", respectively and compare them.
// If the 2 strings are equal, print str1 and str2 are equal, else str1 and str2 are not equal.

var str1 = "hello, bearcats!"
var str2 = "HELLO, BEARCATS!"
if(str1 == str2)
{
    print("str1 and str2 are equal")
}
else
{
    print("str1 and str2 are not equal")
}
 print("-----------------------------------")

// 5.c) Given a pair of non empty strings. Count the number of matching characters in those strings (consider the single count for the character which have duplicates in the strings).
var s1 : String = "aabcddekll12@"
var s2 : String = "bb22ll@55k"
        var c = 0

        var a1 = Set<Character>()
        var b1 = Set<Character>()
        let sq1 = s1.filter{a1.insert($0).inserted}
        let sq2 = s2.filter{b1.insert($0).inserted}
        

for index1 in sq1.indices{
    for index2 in sq2.indices{
        if(sq1[index1] == sq2[index2]){
            c = c+1
        }
    }
}
print(c)
// Output : 5
// (i.e. matching characters :- b, 1, 2, @, k)
// Hint : You may use Set() to get the unique characters in a string.
print("-----------------------------------")

// 5.d) Write Swift code to trim leading and trailing "t" characters in a given string.
 var myString1 = "ttttttttttenettttt"
let cs = CharacterSet.init(charactersIn: "t")
myString1 = myString1.trimmingCharacters(in: cs)
print(myString1)
// expected output is "ene"

//**************** END OF QUESTION 5 ****************
