print("Welcome")
let val1 = 7
var val2 = 7
var total = "The total is \(val1+val2)"
var name: String = "Helloo"

//Triple quotes
let text = """
    Hello how are you welcome to the test
    We can write here.
"""
print(text)

//Array
var colors = ["red", "blue", "black"]
print(colors[0])
colors.append("yellow")
print(colors[3])

//Dictionary
var colors2  = [1:"red", 2:"blue", 3:"black"]
print(colors2[2] ?? "vidhi")
print("Dictionary: ", colors2)
var colorpr = Array(colors2.keys)
print(colorpr)

for (colKey,colDict) in colors2{
    print("Key \(colKey) has \(colDict)")
}

//Optional
let val = Int()
print(val)
var num: Int? // ! or ?
print(num)
let num2: Int? = 8
print(num2)
print(num2!)

//optional Handling
if num != nil{
    print("value \(num!)")
}else{
    print("nil value")
}

//Optional binding
if let an = num2 {
    print("Value \(an)")
}else{
    print("nil value")
}

let fname: String? = nil;
let lname: String = "vidhi"
if let fname {
    print("name \(fname)")
}
print("name is \(fname ?? lname)")

let fruits = "Apple"
switch fruits{
case "Banana":
    print("fruite is banana")
case "apple":
    print("fruite is apple")
default:
    print("No fruite")
}

let colors3 = ["red", "blue", "black"]
for color in colors3 where color != "red"{
    print(color)
}

var i=1
print("while loop")
while(i <= 5){
    print(i)
    i += 2
}

var j = 2
print("repeat while loop")
repeat{
    print(j)
    j += 1
}while(j<5)

var week = 2
var st = 1
while(st<=week){
    print("Week: \(st)")
    st += 1
    for start in 1...3{
        print("     Day: \(start)")
    }
}

