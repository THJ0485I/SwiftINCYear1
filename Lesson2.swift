//get input from user for both variables 

print("I love Mr Yeo")

// variable and printing 
var company = "SST INC"
print("We all love \(company)")

// math

var name = 3
var number = 5

print(name+number)
print(name-number)
print(name*number)
print(name/number)

// if-else loop
var ilovefood = true
if ilovefood == true
{
    print("iloveeating")
} else if ilovefood == false{
    print("ihatefood")
} else {
    print("idonteatfood")
}

"""
var index = true
while index:
{
  print("stop")
}
"""

// for/while loops
for _ in 0..<10
{
  print("ineedtogotaiwan")
}

var thing = [1, 2, 3, 4, 5, 6, 7]

// for each loop
for i in things 
{
  if i / 2 == 0
  {
    print("divisible by 2)
  }


var num = 5
var num = 5
var numbers = [2, 4, 25, 15]
var onlyDivisible: [Int] = []

for i in numbers {
    if i % num == 0 {
        onlyDivisible.append(i)
    }
}

print(onlyDivisible)

// one line 
print([2, 4, 25, 15].filter { $0 % 5 == 0 })


// calculator - CAN ONLY BE USED IN COMPLIER
  import Foundation

print("Enter first number:")
let input1 = readLine() ?? "0"
let num1 = Double(input1) ?? 0

print("Enter operator (+, -, *, /):")
let op = readLine() ?? "+"

print("Enter second number:")
let input2 = readLine() ?? "0"
let num2 = Double(input2) ?? 0

var result: Double = 0

switch op {
case "+":
    result = num1 + num2
case "-":
    result = num1 - num2
case "*":
    result = num1 * num2
case "/":
    if num2 != 0 {
        result = num1 / num2
    } else {
        print("Error: Division by zero")
        exit(1)
    }
default:
    print("Invalid operator")
    exit(1)
}

print("Result: \(result)")


// can be used in both swift playground and complier - hard coding

import Foundation

var num1 = 12
var num2 = 4
var operation = "/" 
var result: Int? = nil 
switch operation {
case "+":
    result = num1 + num2
case "-":
    result = num1 - num2
case "*":
    result = num1 * num2
case "/":
    if num2 != 0 {
        result = num1 / num2  // Integer division
    } else {
        print("Error: Division by zero.")
    }
default:
    print("Invalid operator.")
}

if let finalResult = result {
    print("Result: \(finalResult)")
}
