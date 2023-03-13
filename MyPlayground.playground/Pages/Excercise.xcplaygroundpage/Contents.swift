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
if str4.count > 2 {
    var str5 = str4.prefix(2)
    print("String: \(str5)")
}else{
    
    print(str4.prefix(2))
}

//without first and last character
if str4.count >= 2 {
    str4.remove(at:str4.startIndex)
    str4.remove(at:str4.index(before: str4.endIndex))
    print("String: \(str4)")
}else{
    print("string length must be at least 2. ")
}

//Concatenation of two string without first character
var str5 = "Hello "
var str6 = "World"
str5.remove(at: str5.startIndex)
str6.remove(at: str6.startIndex)
print("String: \(str5+str6)")

//move first two characters
var str7 = "Swift"
if str7.count >= 2{
    var f1 = str7.prefix(2)
    str7.removeFirst(2)
    print("String: \(str7+f1)")
}else{
    print("string length must be at least 2. ")
}

//check given string starts with "Sw".
var str8 = "Srift"
var f2 = str8.prefix(2)
if f2 == "Sw"{
    print("true")
}else{
    print("false")
}

//concatenate first and last 3 characters of string
var str9 = "Simform Solutions"
var f3 = str9.prefix(3)
var f4 = str9.suffix(3)
print("String: \(f3+f4)")

//power of 2
var n = 100
var power = 2
while power <= n {
    print(power)
    power = power * 2
}

//repeat while
/*var n = 100
var power = 2
repeat{
    print(power)
    power = power * 2
}while(power <= n)*/

/*var power = 2
var n = 100
for _ in 1...n{
    if power <= 100{
        print(power)
        power = power * 2
    }
}*/

//square of N x N asterisks.
for _ in 1...3{
    print()
    for _ in 1...3{
        print("*",terminator: "")
    }
}
print("\n")

//Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
for i in 1...5 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}
print("\n")

//Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.
for j in 1...4{
    for _ in stride(from: 4, to: j, by: -1){
        print(" ", terminator: "")
    }
    for _ in 1...j{
        print("*",terminator: "")
    }
    print("")
}

print()
//Prime number
var numb = 17
if (numb % 2 == 0) {
   print("\(numb) is not prime.")
}else{
    print("\(numb) is prime.")
}

//Optional
var val:Int?
print(val)

//force unwrapping in optionals
var num8:Int? = 7
print(num8!)

//Optional binding if-let
if let an = val {
    print("Value \(an)")
}else{
    print("nil value")
}

//Optional binding guard-let
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)")
}
greet("Vidhi")

//nil coalescing operator
let name7: String? = nil
print("Hello, \(name7 ?? "Welcome")")

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal.
var numbers = [1,2,3,1]
var a1 = numbers[0]
var a2 = numbers.last
if a1 == a2{
    print("Equal")
}else{
    print("not equal")
}

//Write a Swift program to create a new array with double the length of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
var numbers2 = [1,2,3,4]
var new_arr:[Int] = Array(repeating: 0, count:numbers2.count * 2)
new_arr.insert(numbers2.last!, at: new_arr.count)
print(new_arr)

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
var numbers3 = [0,1,2,3]
if numbers3.count > 2{
    var num9 = numbers3.prefix(2)
    print(num9)
}else{
    print(numbers3.prefix(2))
}

//Write a Swift program to take one array and find out maximum number from that array
var numbers4 = [0,50,100,20,80,150]
print(numbers4.max()!)

//Write a Swift program to take one array and sort it in descending order.
var numbers5 = [0,5,6,2,10]
numbers5.sort(by: >)
print(numbers5)

//Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
var listOfNumbers = [1, 2, 3, 10, 100]
var divisors = [2, 5]
for i in listOfNumbers{
    for j in divisors{
        if i % j == 0{
            print(i)
            break
        }
    }
}

//Array methods
var colors = ["red", "blue", "black"]
print(colors[0])
colors.append("yellow")
print(colors[3])
colors.insert("white", at: 1)
print(colors)
colors.remove(at: 1)
print(colors)
print(colors.count)


//You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string

var code = [

"a" : "b",

"b" : "c",

"c" : "d",

"d" : "e",

"e" : "f",

"f" : "g",

"g" : "h",

"h" : "i",

"i" : "j",

"j" : "k",

"k" : "l",

"l" : "m",

"m" : "n",

"n" : "o",

"o" : "p",

"p" : "q",

"q" : "r",

"r" : "s",

"s" : "t",

"t" : "u",

"u" : "v",

"v" : "w",

"w" : "x",

"x" : "y",

"y" : "z",

"z" : "a"
]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decoded_msg = encodedMessage.map({ch in
    code.first(where: { String(ch) ==  $0.value })?.key ?? " "
}).joined()

print(decoded_msg)



//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]
var firstnamee : [String] = []
for arrD in people {
    firstnamee.append(arrD["firstName"]!)
}
print(firstnamee)
print()

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
var fullName : [String] = []
for arrD in people {
    fullName.append( arrD["firstName"]! + " " + arrD["lastName"]! )
}
print(fullName)

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.
var people3: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]
var min : Int = Int.max
var fullname = ""
for arrD in people3 {
    if min > (arrD["score"] as! Int) {
        
        min = (arrD["score"] as! Int)
        fullname = arrD["firstName"] as! String
        fullname.append(arrD["lastName"] as! String)
    }
}
print(fullname)
print()

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format

var numbers_arr = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var freqDict : [Int:Int] = [:]

for i in numbers_arr {
    if freqDict.keys.contains(i) {
        var ind :Int = freqDict[i]!
        ind = ind + 1
        freqDict[i] = ind
    }else{
        freqDict[i] = 1
    }
}
print(freqDict)

freqDict.sorted(){
    $0.key < $1.key
}.forEach{
    print("\($0) \($1)")
}
