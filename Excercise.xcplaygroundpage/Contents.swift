//Print
print("Hello World")

//Variables
var num: Int = 10
print("Integer: \(num)")
var num2: Float = 4.78
print("Float: \(num2)")
let num3: Double = 20.7835627
print("Double: \(num3)")
let char: Character = "S"
print("Character: \(char)")
let name: String = "Simform"
print("String: \(name)")
let sel: Bool = true
print("Boolean: \(sel)")

//Sum
print("Sum is: \(num+5)")

//simple interest
let amount = 10000
let rate = 15
let time = 3
let interest = (amount * rate * time)/100
print("Simple Interest: \(interest)")

//String Concatenation
var str1 = "Simform "
var str2 = "Solutions"
print("Using + Operator: \(str1+str2)")
str1 += str2
print("Using += Operator: \(str1)")
var str3 = "Vidhi "
str3.append("Patel")
print("Using append function: \(str3)")

//Operator
let val1:Int = 57
let val2:Int = 20
print("Addition: \(val1+val2)")
print("Subtraction: \(val1-val2)")
print("Multiplication: \(val1*val2)")
print("Division: \(val1/val2)")

//Ternary Operator
let num1 = 20
let ans = (num>0) ? "Positive number" : "Negative Number"
print(ans)

//First two characters
var str4 = "Simform Solution"
var str5 = str4.prefix(2)
if str5.count <= 2{
   print(str5)
}else{
    print(str4.prefix(1))
}


