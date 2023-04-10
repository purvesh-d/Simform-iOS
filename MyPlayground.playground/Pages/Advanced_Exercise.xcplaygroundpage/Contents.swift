import Foundation

//1. Breakfast
var baconAge = 9
var eggsAge = 25
if baconAge <= 7 && eggsAge <= 21 {
    print("you can cook bacon and eggs ")
} else {
    if baconAge > 7 {
        print("throw out bacon.")
    }
    if eggsAge > 21 {
        print("throw out eggs.")
    }
}

//2. Leap Year
var year = 2016
if year % 4 == 0 {
    if year % 100 != 0 && year % 400 != 0 {
        print("Leap year!")
    } else {
        print("Not a leap year!")
    }
} else {
    print("Not a leap year!")
}

//3. Hitpoints
var hp = 62
if hp > 20 {
    if hp % 10 == 0 {
        print(hp)
    } else {
        hp = hp - ( hp % 10 ) + 10
        print(hp)
    }
} else if hp < 20 && hp > 0 {
   hp = 20
   print(hp)
} else {
   print("he’s dead")
}

//4. Above average
var grade1: Double = 7.0
var grade2: Double = 9.0
var grade3: Double = 5.0
var yourGrade: Double = 8.0
var avg = (grade1 + grade2 + grade3 + yourGrade) / 4
if yourGrade > avg {
    print("above average")
} else {
    print("below average")
}

//5. Tipping
var mealCost: Double = 3.5
var tip: Int = 20
var total = (mealCost * Double(tip)) / 100
print(total + mealCost)

//Class
/**Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.*/
class Demo {
    var id = 36
    var name = "vidhi"
}
var demo1 = Demo()
print("id:", demo1.id)
print("Name:",demo1.name)

/**Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.*/
class DemoInit {
    var name = ""
    var college = ""
    var department = ""
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
    }
    
    init(name: String, department: String) {
        self.name = name
        self.department = department
    }
}
var obj1 = DemoInit(name: "vidhi", college: "GIT")
var obj2 = DemoInit(name: "vidhi", department: "CE")
print("Name: \(obj1.name) college: \(obj1.college)")
print("Name: \(obj2.name) department: \(obj2.department)")

/**Create a swift class without initializers and access (write, read) its properties using instance of class.*/
class DemoClass {
    var age: Int = 0
}
var obj3 = DemoClass()
obj3.age = 20
print("Age: \(obj3.age)")

/**Create a swift class which is having code to return square of given number and access this code using class instance.*/
class SquareDemo {
    var num1 = 0
    func square() {
        print("Square: ", num1 * num1)
    }
}
var obj4 = SquareDemo()
obj4.num1 = 10
obj4.square()

/**Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.*/
class SuperClass {
    var nameb: String = ""
    func demo() {
        print("This is a super class")
    }
}

class SubClass: SuperClass {
    func display() {
        print("name: ", nameb)
    }
}

class SubClassNew: SuperClass {
    func display2() {
        print("name: ",nameb)
    }
}

var sub1 = SubClass()
var sub2 = SubClassNew()
sub1.nameb = "simform"
sub1.demo()
sub2.nameb = "solutions"
sub2.display2()
sub1.display()

/**Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.*/
class SuperDemo {
    var num1 = 0
    func demo() {
        print("Square: ", num1 * num1)
    }
}

class SubDemo: SuperDemo {
    override func demo() {
        super.demo()
        print("Cube: ", num1 * num1 * num1)
    }
}

var overObj = SubDemo()
overObj.num1 = 5
overObj.demo()

/**Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.*/
class PowerDemo {
    var value = 0
    var power = 0
    init(value: Int){
        self.value = value
    }
    
    func doPower(power: Int) -> Int {
        self.power = power
        return Int(pow(Double(value), Double(power)))
    }
}
var objPow = PowerDemo(value: 5)
var result = objPow.doPower(power: 3)
print("\(objPow.value)'s \(objPow.power) power \(result)")

/**Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.*/
class Vehicles {
    var pname = ""
    
    func displayProduct() {
        print("Product name is \(pname)")
    }
}

class Bike: Vehicles {
    var color = ""
    
    func displayColor() {
        print("Color of \(pname) is \(color)")
    }
    
}

class Car: Vehicles {
    var price = 0
    
    func displayPrice() {
        print("Price of \(pname) is \(price)")
    }
}
var vehicle1 = Bike()
var vehicle2 = Car()
vehicle1.pname = "Hero"
vehicle1.displayProduct()
vehicle1.color = "Black"
vehicle1.displayColor()
vehicle2.price = 90000
vehicle2.displayPrice()

/**Create a person swift class with person name initializer and create one function to greet that person.
 Example: let person1 = Person(name: Joe)
   Person1.greet() // This should print “Hello Joe”
*/
class Person {
    var name = ""
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Hello \(name)")
    }
}
let person1 = Person(name: "vidhi")
person1.greet()

/**Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
 let example1 = Example()
 Example1.a = “Hello”
 let example2 = example1
 example2.a = “Hi”
 print(example1.a)
 print(example2.a)
 // Consider ‘a’ as string property of example class.
 --> Check these two print outputs and try to find out the reason for that output.
*/

class Example {
    var str: String
    
    init() {
        str = "simform"
    }
}
let example1 = Example()
example1.str = "Hello"
print(example1.str)
let example2 = example1
//print(example2.str)
example2.str = "Hii"
print(example2.str)

//Structure
/**Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
*/
struct Work {
    var workLocation = "Ahmedabad"
    var workHours = 3
    var projectNames = ["Library Management", "Hospital Management", "GTU site"]
    func displayProjects() {
       print(projectNames)
    }
}
var work1 = Work()
work1.displayProjects()

/**Create a structure example which demonstrates use of initializer in structures.**/
struct DemoStruct {
    var dname: String
    
    init() {
        dname = "vidhi"
    }
}
var dName = DemoStruct()
print("Name: \(dName.dname)")

/**Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters**/
struct StructInit {
    var name: String
    var age: Int
    init() {
        name = "simform"
        age = 19
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var sobj1 = StructInit()
print("Name: \(sobj1.name) and age: \(sobj1.age)")
var sobj2 = StructInit(name: "vidhi", age: 21)
print("Name: \(sobj2.name) and age: \(sobj2.age)")

/**.Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
Output: even numbers are: [6, 8, 10, 8, 12]
      Odd numbers are: [1, 3, 5, 9, 7]
*/
struct OddEven {
    var all = [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
    var odd = [Int]()
    var even = [Int]()
    
    func find() -> (odd: [Int], even: [Int]) {
        var odd: [Int] = []
        var even: [Int] = []
        for i in all {
            if i % 2 == 0 {
                odd.append(i)
            } else {
                even.append(i)
            }
        }
        return (odd, even)
    }
}
var objf = OddEven()
print(objf.find())

/** Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
 Consider two persons array for Joe and Harry. But in your code Its size can be vary.
Output be like: Name: Joe, Gender: Male, Age: 27
   Name: Harry, Gender: Male, Age: 21
 */
struct PersonStruct {
    var name: String
    var gender: String
    var age: Int
}
var per1 = PersonStruct(name: "Joe", gender: "Male", age: 27)
var per2 = PersonStruct(name: "Harry", gender: "Male", age: 21)
var new_arr: [PersonStruct] = []
new_arr.append(per1)
new_arr.append(per2)
for arr in new_arr {
    print("Name: \(arr.name), Gender: \(arr.gender), Age: \(arr.age)")
}

/**
Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
 */
struct ExampleStruct {
    var str: String
}
let examp1 = ExampleStruct(str: "Hello")
//let examp2 = example1
print(examp1)
let examp2 = ExampleStruct(str: "hii")
print(examp2)

/**
Try to figure out basic difference between class and structures and give a demo for same.
 */
class ExampleClass {
    var name = ""
    
    init(name: String) {
        self.name = name
    }
}
var obbj = ExampleClass(name: "Hello")
print(obbj.name)

struct ExampStruct {
    var name = ""
}
var objStruct1 = ExampStruct(name: "welcome")
print(objStruct1.name)

//Enum
/**
Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
Example. It should return Monday or mon if I pass parameter 1 for get day name.
*/
enum DaysEnum: Int, CaseIterable {
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

func find(day: DaysEnum) {
    switch day {
    case .Monday:
        print("Monday or mon")
    case .Tuesday:
        print("Tuesday or tue")
    case .Wednesday:
        print("Wednesday or wed")
    case .Thursday:
        print("Thursday or thu")
    case .Friday:
        print("Friday or fri")
    case .Saturday:
        print("Saturday or sat")
    case .Sunday:
        print("Sunday or sun")
    }
}
find(day: DaysEnum(rawValue: 3)!)

/**Create one enumeration program to return number of days in a month**/
enum DaysInMonth {
    case January, February, March, April, May, June, July, August, September, October, November, December
    
    func findDays() {
        switch self {
        case .January:
            print("31")
        case .February:
            print("28")
        case .March:
            print("31")
        case .April:
            print("30")
        case .May:
            print("31")
        case .June:
            print("30")
        case .July:
            print("31")
        case .August:
            print("31")
        case .September:
            print("30")
        case .October:
            print("31")
        case .November:
            print("30")
        case .December:
            print("31")
        }
    }
}
DaysInMonth.August.findDays()

/**Write a swift program using enumerations to demonstrate Int enums.*/
enum Colors: Int {
    case Black = 1, Green, Yellow
}
var colorObj = Colors.Green.rawValue
print(colorObj)

/**Write a swift program to demonstrate string type enum.*/
enum EnumString: String {
    case one = "One"
    case two = "Two"
    case three = "three"
}
var stringObj = EnumString.two.rawValue
print(stringObj)

/**Write a swift program for enum with raw values*/
enum ColorEnum: String {
    case black, green
    func colorFunc() -> String {
        return self.rawValue
    }
}
print(ColorEnum.green.colorFunc())

/**Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory)*/
enum Days: String, CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
var caseList = Days.allCases.map({"\($0)"}).joined(separator: ", ")
print(caseList)

for days in Days.allCases {
    print("Days: \(days)")
}

/**Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).*/
enum Marks {
    case gpa(Double, Double, String)
    case grade(String, String, String)
    case newobj
}
var marks1 = Marks.gpa(4.7, 6, "no")
print(marks1)
var marks2 = Marks.grade("A", "B", "C")
print(marks2)


/**Create an enum with its rawValues of type String and show usage of case to print value of case.*/
enum EnumDemo: String, CaseIterable {
    case color = "Green"
    case product = "Hero"
}
EnumDemo.allCases.forEach {
    print($0.rawValue)
}

//Properties  Subscripts Methods & Inheritance
/**create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class*/
class DemoGet {
    var name: String
    var display: String {
        return name
    }
    init(name: String) {
        self.name = name
    }
}
var objDemo = DemoGet(name: "vidhi")
objDemo.name = "hello"
print(objDemo.name)

/**Create a swift program to demonstrate usage of computed properties using getter and setter. */
class CompGet {
    var numGet1: Int = 0
    var numGet2: Int = 0
    var sumGet: Int {
        get {
                numGet1 + numGet2
        }
        set(updateNum) {
            numGet1 = updateNum + 10
            numGet2 = updateNum + 10
        }
    }
}
var objGet = CompGet()
objGet.numGet1 = 10
objGet.numGet2 = 20
print(objGet.sumGet)

/**Create a swift program to show usage of stored properties. **/
class NewClass {
    var name = "vidhi"
    let age = 10
}
let new3 = NewClass()
new3.name = "welcome"
print(new3.name)

/**Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.**/
class PrivateDemo {
    private var name = "hello"
}
var objPrivate = PrivateDemo()
//print(objPrivate.name)

/**Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types**/
class PersonDemo {
    var id: Int
    var name: String
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
var objDemo1 = PersonDemo(id: 1, name: "vidhi")
var objDemo2 = PersonDemo(id: 2, name: "patel")
var objDemo3: [PersonDemo] = [objDemo1, objDemo2]
for i in objDemo3 {
    print("Id:\(i.id) Name:\(i.name)")
}

/**Create one example of usage of willSet and didSet**/
class PropClass {
    var numProp: Int = 0 {
        willSet(newProp) {
            print("this value is about to set: \(newProp)")
        }
        didSet {
                print("this value is set from \(oldValue) to \(numProp)")
        }
    }
}
var objProp = PropClass()
objProp.numProp = 20
objProp.numProp = 30
objProp.numProp = 40

/**Create one lazy stored property in a class and show usage of it.**/
struct LazyDemo {
    lazy var name: String = "vidhi"
}
var objLazy = LazyDemo()
print(objLazy.name)

/**Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
*/
class PersonBase {
    var name: String
    var occupation: String
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
    func display() {
        print("Base Class: \(name) and \(occupation)")
    }
}
class Student: PersonBase {
    var college: String
    init(name: String, occupation: String, college: String) {
        self.college = college
        super.init(name: name, occupation: occupation)
    }
    override func display() {
        super.display()
        print("Child class1: \(name), \(occupation), \(college)")
    }
}
class Employee: PersonBase {
    var company: String
    init(name: String, occupation: String, company: String) {
        self.company = company
        super.init(name: name, occupation: occupation)
    }
    override func display() {
        super.display()
        print("Child Class2: \(name), \(occupation), \(company)")
    }
}
var objIn = Student(name: "vidhi", occupation: "student", college: "GIT")
var objIn2 = Employee(name: "vidisha", occupation: "trainee", company: "simform")
objIn.display()
objIn2.display()

/**Create one structure to show usage of mutating function in swift**/
struct MultiplyNum {
    var num = 0
    mutating func mul(num2: Int) {
        num = num * num2
        print("multiply: ", num)
    }
}
var obj = MultiplyNum()
obj.num = 10
obj.mul(num2: 5)

/**Create one class inheritance demo to show usage of method overriding**/
class OverrideDemo {
    var name = "hello"
    func display() {
        print("Name: \(name)")
    }
}
class ChildDemo: OverrideDemo {
    var age = 20
    override func display() {
        super.display()
        print("Name: \(name) age: \(age)")
    }
}
var objOver = ChildDemo()
objOver.display()

/**Create one swift class to show usage of type methods**/
class DemoType {
    static func display(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}
print(DemoType.display(num1: 5, num2: 5))

/**Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)**/
class Check {
    func display() {
        print("Super class method.")
    }
    static func find() {
        print("Super class static method.")
    }
}
class CheckSub: Check {
    override func display() {
        super.display()
        print("Sub class method.")
    }
}
// can not oveeride static methods.

/**Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.**/
class SubscriptDemo {
    var arr = ["Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday", "Saturday"]
    func get(index: Int) -> Bool {
        if index >= 1 && index <= 7 {
            return true
        } else {
            return false
        }
    }
    subscript(index: Int) -> String {
        get {
            assert(get(index: index), "out of range")
            return arr[index - 1]
        }
    }
}
var objWeek = SubscriptDemo()
print(objWeek[1])

/**Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.*/
extension String {
    subscript(charIndex: Int) -> Character {
           return self[index(startIndex, offsetBy: charIndex)]
    }
}
let productName = "pencil"
let indexOfCharacter = 2
if indexOfCharacter >= productName.count {
    print("index is not exist")
} else {
    var char = productName[indexOfCharacter]
    print("Character at \(indexOfCharacter) is \(char)")
}

/**I have one integer array and create one function which takes range as input and returns all elements between the range.*/
func displayRange(arr: [Int],ran: Range<Int>) -> [Int] {
    var start = arr.index(arr.startIndex, offsetBy: ran.lowerBound)
    var end = arr.index(arr.startIndex, offsetBy: ran.upperBound)
    return Array(arr[start...end])
}
var objRange: [Int] = [1, 3, 5, 9, 7, 4, 6]
var newObj = displayRange(arr: objRange, ran: 1..<3)
print(newObj)

/**I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.*/
struct Sub {
    var dict = [[1: "Red"], [2: "Black"], [3: "Green"]]
    subscript(index: Int) -> String {
        var new = dict.compactMap{ $0[index] }.joined()
        return String(new)
    }
}
var objSub = Sub()
print(objSub[2])

/**Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer*/
class Song {
    var songName: String
    init(songName: String) {
        self.songName = songName
    }
    func displayName() {
        print("Song is \(songName)")
    }
}
class HipHop: Song {
    var singer: String
    init(songName: String, singer: String) {
        self.singer = singer
        super.init(songName: songName)
    }
    override func displayName() {
        super.displayName()
        print("Singer of \(songName) song  is \(singer)")
    }
}
class Classical: Song {
    var composer: String
    init(songName: String, composer: String) {
        self.composer = composer
        super.init(songName: songName)
    }
    override func displayName() {
        super.displayName()
        print("Composer of \(songName) song is \(composer)")
    }
}
var song1 = HipHop(songName: "thousand years", singer:  "salena")
var song2 = Classical(songName: "tum hi", composer: "AR Raheman")
song1.displayName()
song2.displayName()

/**Create a swift class with properties which can be read-write outside of class**/
class DemoProperty {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func display() {
        print("Name: \(name) age: \(age)")
    }
}
var objProperty = DemoProperty(name: "vidhi", age: 21)
objProperty.display()
objProperty.name = "helloo"
objProperty.display()

//Error Handling
/**Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.*/
enum PasswordValidate: Error {
    case shortPassword
    case longPassword
    case emptyPassword
}
func checkPassword(password: String) throws {
    if password.isEmpty {
        throw PasswordValidate.emptyPassword
    } else if password.count < 8 {
        throw PasswordValidate.shortPassword
    } else if password.count > 15 {
        throw PasswordValidate.longPassword
    }
}
do {
   try checkPassword(password: "vid12")
}
catch PasswordValidate.emptyPassword {
    print("Empty Password.")
}
catch PasswordValidate.shortPassword {
    print("Password is too short")
}
catch PasswordValidate.longPassword {
    print("Password is too long")
}
catch {
    print("unexpected error.")
}

/**Create a program for shopping cart. If desired quantity for an item is not available, throw exception.**/
enum ShoppingCart: Error {
    case itemNotAvailable
}
class Shopping {
    var val1 = ["pen": 10, "pencil": 20, "bottle": 5]
    var products: String
    var items: Int
    init(prod: String, item: Int) {
       products = prod
        items = item
    }
    func checkItem() throws -> String {
        guard var itemGet = val1[products] else {
            return "Enter valid item."
        }
        if itemGet < items {
            throw ShoppingCart.itemNotAvailable
        }
        return "Item available."
    }
}
var objShop = Shopping(prod: "pencil", item: 2)
do{
    try print(objShop.checkItem())
}
catch ShoppingCart.itemNotAvailable {
    print("Item is not available")
}

//Extensions
/**Create following string manipulation functions using string extensions:
 •    Add a character in a string at 5th position
 •    Replace one character with other in a string
 •    Remove white spaces from string
 •    Get number of words in a string
*/
extension String {
    mutating func addChar(char: Character) {
        var new = index(startIndex, offsetBy: 5)
        insert(char, at: new)
    }
}
var objEx1 = "pencil"
objEx1.addChar(char: "M")
print(objEx1)

extension String {
    mutating func replaceStr(_ oldStr: String, with newStr: String) {
        self = self.replacingOccurrences(of: oldStr, with: newStr)
    }
}
var objEx2 = "vidhi"
objEx2.replaceStr("dh", with: "AB")
print(objEx2)

extension String {
    mutating func removeSpace(_ oldStr: String, with newStr: String) {
        self = self.replacingOccurrences(of: oldStr, with: newStr)
    }
}
var objEx3 = "vi dh i"
objEx3.removeSpace(" ", with: "")
print(objEx3)

extension String {
    func numOfWords() -> Int {
        var c = 1
        for i in 0...self.count-1 {
            if self[i] == " " {
                c += 1
            }
        }
        return c
    }
}
var objEx4 = "vidhi patel"
print(objEx4.numOfWords())
