//Arrays
var arr = [1,2,3,4]
print(arr)
var arr2: [Int] = [5,6,7,8]
print(arr2)
var arr3: [Int] = []
print(arr3)
var arr4 = [Int]()
print(arr4)
var arr5 = Array<String>()
print(arr5)
var arr6 = Array(repeating: "Hello", count: 3)
print(arr6)
var arr7 = Array(4...7)
print(arr7)

var colors = ["Red", "Black", "Yellow"]
colors.append("green")
print(colors)
print(colors[2])
colors.append("White")
print(colors)
arr.append(contentsOf: arr2)
print(arr)
colors.insert("Green", at: 2)
print(colors)
colors[2] = "New"
print(colors.count)
print(colors.prefix(2))
print(colors.startIndex)
print(colors.endIndex)
print(colors.remove(at: 1))
print(colors)

var new_c: [Int] = []
var new = new_c.isEmpty
print("Empty: \(new)")

//Looping in Arrays
for i in colors {
    print(i)
}

//Any
var mix: [Any] = ["fname", 3.14]
mix.append("lname")
mix.insert(45, at: 3)
print(mix)

//Set
var setEmp = Set<Int>()
print(setEmp)
var set1:Set = [10,5,3,3]
print(set1)
var set2:Set<Int> = [10,5,3]
print(set2)
set2.insert(7)
print(set2)

//Set Operation
var set3:Set = [1,2,3]
var set4:Set = [2,5,6]
print("Union: \(set3.union(set4))")
print("Intersection: \(set3.intersection(set4))")
print("Difference: \(set3.subtracting(set4))")

//Dictionary
let newDict: [String:Int] = [:]
print(newDict)
var newDict2: [Int:String] = [1: "red", 2: "blue", 3: "green"]

print(newDict2)
print(newDict2.keys)
print(newDict2.values)
newDict2[4] = "white"
print(newDict2)

//Function
func addNum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(addNum(num1: 10, num2: 15))

//Function parameter with default values
func mulNum(num1: Int = 5, num2: Int = 5) {
    var mul = num1 * num2
    print(mul)
}
mulNum(num1: 2, num2: 2)
mulNum(num1: 2)
mulNum()

//Use of argument label
func divNum(of num1: Int, and num2: Int) {
    var div = num1 / num2
    print(div)
}
divNum(of: 10, and: 5)

//inout para
/*func printName(name: String){
    name = "simform"
}*/

func printName(name: inout String) {
    if name == "Simform" {
        name = "Solution"
        print(name)
    }
}
var fname = "Simform"
printName(name: &fname)

//recursion
func fact(of num1: Int) -> Int {
    if num1 == 1 {
        return 1
    } else {
        return num1 * fact(of: num1 - 1)
    }
}
print("Factorial: \(fact(of: 3))")

//function overloading
func display(name: String) {
    print("The name is: \(name)")
}
func display(num1: Int) {
    print("The number is: \(num1)")
}
func display(num1: Int, name: String) {
    print("The number is \(num1) and  name is \(name)")
}
display(num1: 45)
display(name: "Simform")
display(num1: 10, name: "Solutions")

//Assign function to a variable
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
var addFunc: (Int, Int) -> Int
addFunc = add
print(addFunc(5, 5))

//Swift class
class Student {
    var name = ""
    var eno = 0
}
var s1 = Student()
var s2 = Student()
s1.name = "john"
s1.eno = 10
s2.name = "alice"
s2.eno = 11
print("Name: \(s1.name) and eno: \(s1.eno)")
print("Name: \(s2.name) and eno: \(s2.eno)")

//Swift with methods
class Area {
    var length = 0
    var width = 0
    func areaOf() {
        print("Area is: ",length * width)
    }
}
var area1 = Area()
area1.length = 10
area1.width = 20
area1.areaOf()

//Initializer
class Employee {
    var name: String
    var num: Int
    init(name: String, num: Int) {
        self.name = name
        self.num = num
    }
}
var emp1 = Employee(name: "simform", num: 01)
var emp2 = Employee(name: "solution", num: 02)
print("Name: \(emp2.name) and number: \(emp2.num)")

//struct
struct StudentStruct {
    var name = ""
    var eno = 0
}
var student1 = StudentStruct()
student1.name = "simform"
student1.eno = 4
print("Name: \(student1.name) and eno: \(student1.eno)")

//memberwise initializer
struct EmployeeStruct {
    var ename: String
    var eid: Int
}
var employee1 = EmployeeStruct(ename: "solution", eid: 5)
print("Name: \(employee1.ename) and id: \(employee1.eid)")
var employee2 = EmployeeStruct(ename: "vidhi", eid: 20)

//struct init
struct DemoStruct {
    var dname: String
    init() {
        dname = "vidhi"
    }
}
var dName = DemoStruct()
print("Name: \(dName.dname)")

//enum RawValue
enum StudentEnum: Double {
    case one, two, three, four
}
var stud = StudentEnum.three.rawValue
print(stud)
print(StudentEnum.two.rawValue)

enum DaysEnum: String, CaseIterable {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}
print(DaysEnum.allCases)
var caseList = DaysEnum.allCases.map({"\($0)"}).joined(separator: ", ")
print(caseList)

for days in DaysEnum.allCases {
    print("Days: \(days)")
}

//enum associated value
//enum NewEnum {
//    case one
//    case two(String) = "vidhi"
//}


//Enum with raw values
enum ColorEnum: String {
    case black, green
    func colorFunc() -> String {
        return self.rawValue
    }
}
print(ColorEnum.green.colorFunc())

//Enum with switch case
enum Gender {
    case male, female
}
var cat = Gender.male
switch(cat) {
case .male:
    print("Male category")
case .female:
    print("female category")
}

//enum inheritance
//enum OneEnum: Int {
//    case one, two
//}
//enum TwoEnum: OneEnum, Int {
//    case three, four
//}
//var objnew = TwoEnum.three.rawValue
//print(objnew)

//recursive enum
indirect enum RecurEnum {
    case num(Int)
    case add(RecurEnum, RecurEnum)
}
let numRecur = RecurEnum.num(7)
let numRecur2 = RecurEnum.num(7)
let sum = RecurEnum.add(numRecur, numRecur2)
print(sum)

func doExp(_ exp: RecurEnum) -> Int {
    switch exp {
    case let .num(val):
        return val
    case let .add(one, two):
        return doExp(one) + doExp(two)
    }
}
print(doExp(sum))

//Closures
var name = {
    print("Welcome")
}
name()

//Closure with parameters
let name2 = { (name: String) in
    print("Hello \(name)")
}
name2("closures")

//Closure with parameters and return type
var findCube = { (val1: Int) -> (Int) in
    var cube = val1 * val1 * val1
    return cube
}
var ans = findCube(3)
print("Cube: ", ans)

func find(_ val: Int) -> Int {
    let val2 = 20
    let add = {
        return val + val2
    }
    return add()
}
let fval = find(10)
print(fval)

//closure as function para
func findTwo(two: () -> () ) {
    two()
}
findTwo(two: {
    print("helloo")
})

//autoclosure - without closure braces
func findThree(three: @autoclosure () -> () ) {
    three()
}
findThree(three: print("autoclosure"))

//Properties - variable and constant stored properties
struct NewStruct {
    var name: String
    let age: Int
}
var new1 = NewStruct(name: "hello", age: 21)
new1.name = "vidhi"
print(new1)
/*let new2 = NewStruct(name: "welcome", age: 22)
new2.name = "vidhi"
print(new2)*/

//Stored properties
class NewClass {
    var name = "vidhi"
    let age = 10
}
let new3 = NewClass()
new3.name = "welcome"
print(new3.name)

//Lazy property
struct LazyDemo {
    var name: String
    var id: Int
    lazy var new_var: String = {
        "Name: \(name) and ID: \(id)"
    }()
}
var lazy1 = LazyDemo(name: "Helloo", id: 55)
print(lazy1.new_var)

//Computed property
class Comp {
    var numComp1: Int = 0
    var numComp2: Int = 0
    
    var sumC: Int {
        numComp1 + numComp2
    }
}
var obj1 = Comp()
obj1.numComp1 = 10
obj1.numComp2 = 10
print("Sum: ", obj1.sumC)

//getter and setter
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
var obj2 = CompGet()
obj2.numGet1 = 5
obj2.numGet2 = 5
print("Sum: ",obj2.sumGet)
 
obj2.sumGet = 7
print("updated value1: ", obj2.numGet1)
print("updated value2: ", obj2.numGet2)

//Property Observer
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
var obj3 = PropClass()
obj3.numProp = 20
obj3.numProp = 30
obj3.numProp = 40

//Property wrapper
@propertyWrapper
struct WrapperDemo {
    private var namew = ""
    var wrappedValue: String {
        get { return namew }
        set { namew = newValue.uppercased() }
    }
}
struct WrapperUse {
    @WrapperDemo var namew: String
}
var use2 = WrapperUse()
use2.namew = "welcome"
print(use2.namew)

//static property - Type Property
class StudentDemo {
    static var sname: String = ""
}
StudentDemo.sname = "Simform Solutions"
print(StudentDemo.sname)

//Higher order function-sorted
var arr1 = [10,7,27,40]
var new_arr2 = arr1.sorted(by: > )
print("Sorted: ", new_arr2)

//foreach
print("foeEach: ")
arr1.forEach {
    print($0)
}

//map
let new_arr3 = arr1.map( { $0 * 2 } )
print("Map: ", new_arr3)

//compactMap
var array3 = [1,4,nil,6]
let new_arr4 = array3.compactMap( { $0 } )
print("CompactMap: ", new_arr4)

//flatMap
var array4 = [[2,4,6], [7,3,4]]
var new_arr5 = array4.flatMap( { $0 } )
print("flatMap: ", new_arr5)

//filter
let array5 = [5, -6, 9]
let new_arr6 = array5.filter{ ($0 > 0) }
print("filter: ", new_arr6)

//reduce
var array6 = [1,2,3,4,8]
var new_arr7 = array6.reduce(0, { $0 + $1 } )
print("reduce: ", new_arr7)

//methods
class Area2 {
    var length = 0
    var width = 0
    func areaOf() {
        print("Area is: ",length * width)
    }
}
var area2 = Area()
area2.length = 10
area2.width = 20
area2.areaOf()

//static method
class AddNum {
    static func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}
var res = AddNum.add(num1: 10, num2: 26)
print("Sum: ", res)

//mutating keyword
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

//subscript
struct SubStruct {
    var days = ["one", "two", "three"]
    subscript(index: Int) -> String {
        get { return days[index] }
        set(newValue) { self.days[index] = newValue }
    }
}
var obj4 = SubStruct()
print(obj4[0])

//initializer
class InitDemo {
    let length: Int
    init() {
        length = 5
        print(length)
    }
}
var obj5 = InitDemo()

//parameterized initializer
class ParaDemo {
    var length: Int
    var height: Int
    init(length: Int, height: Int) {
        self.length = length
        self.height = height
    }
    func find() -> Int {
        return length * height
    }
}
var obj6 = ParaDemo(length: 10, height: 20)
print(obj6.find())

//identical
var objv = obj6
if objv === obj6 {
    print("Identical")
} else {
    print("Not Identical")
}

//initializer overloading
class OverloadDemo {
    var empid: Int
    init() {
        empid = 4
    }
    init(_ empid: Int) {
        self.empid = empid
    }
    func find() -> Int {
        return empid
    }
}
var obj7 = OverloadDemo()
var obj8 = OverloadDemo(5)
print(obj7.find())
print(obj8.find())

//convenience initializer
class ConDemo {
    var namef: String
    init(namef: String) {
        self.namef = namef
    }
    convenience init() {
        self.init(namef: "hellooo")
    }
}
var con1 = ConDemo()
print(con1.namef)

class ConDemoSub: ConDemo {
    var price: Int
    init(name: String, price: Int) {
        self.price = price
        super.init(namef: name)
    }
    override convenience init(namef: String) {
        self.init(name: namef, price: 10)
    }
}
let objs = ConDemoSub()
let objs2 = ConDemoSub(namef: "helloo2")
let objs3 = ConDemoSub(name: "hello3", price: 20)
print(objs3.price)
print(objs3.namef)


//memberwise initializer
struct Demo {
    var name: String
}
var objd = Demo(name: "welcome")
print(objd.name)

//failable initializer
class FName {
    let namef: String
    init?(namef: String) {
        if namef.isEmpty {
            return nil
        }
        self.namef = namef
    }
}
var failname  = FName(namef: "vidhi")
if failname != nil {
    print("init success")
} else {
    print("init failed")
}

//deinitialization
class DeClass {
    var color: String
    init() {
        color = "red"
        print("color: ",color)
    }
    deinit {
        print("deinitialization")
    }
}
var deobj: DeClass? = DeClass()
//deobj = nil

//inheritance
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
var sub1 = SubClass()
sub1.nameb = "simform"
sub1.demo()
sub1.display()

//Overriding
class SuperDemo {
    func demo() {
        print("This is Super class")
    }
}
class SubDemo: SuperDemo {
    override func demo() {
        super.demo()
        print("This is Sub class")
    }
}
var overObj = SubDemo()
overObj.demo()

//override property
class SDemo {
    var rup: Int {
        return 2000
    }
}
class BaseDemo: SDemo {
    override var rup: Int {
        print(super.rup)
        return 3000
    }
}
var objp = BaseDemo()
print(objp.rup)

//strong reference
class Person {
    var name: String
    var id: Int
    init (name: String, id: Int) {
        self.name = name
        self.id = id
    }
    deinit {
        print("Deinitialization is done")
    }
}
var ref1: Person? = Person(name: "hello", id: 10)
print(ref1!.name)
//ref1 = nil

//Strong reference cycle - break by weak
class StrongClass {
    var name: String
    var eid: RefClass?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
}
class RefClass {
    var rupee: Int
    weak var price: StrongClass?
    init(rupee: Int) { self.rupee = rupee }
    deinit {
        print("\(rupee) is deinitialized")
    }
}
var ref2: StrongClass? = StrongClass(name: "Strong1")
var ref3: RefClass? = RefClass(rupee: 1000)
ref2!.eid = ref3
ref3!.price = ref2
ref2 = nil
ref3 = nil

//Optional chaining
class OptionalClass {
    var op1: BaseOptional?
}
class BaseOptional {
    var name: String = "hello"
}
var oref = OptionalClass()
//oref.op1 = BaseOptional()
if let newRef = oref.op1?.name {
    print(newRef)
} else {
    print("not accessible")
}

class Office {
    var place: Place?
}
class Place {
    var floor: [Floor] = []
    var numOfFloor: Int {
        return floor.count
    }
    subscript(Index: Int) -> Floor {
        get {
            return floor[Index]
        }
        set {
            floor[Index] = newValue
        }
    }
    func display() {
        print("number of floors are: \(numOfFloor)")
    }
}
class Floor {
    var name: String
    init (name: String) { self.name = name }
}
var acc = Office()
if let num = acc.place?.numOfFloor {
    print("number of floors are: \(num)")
} else {
    print("unable")
}

//Error Handling
enum ErrorHandling: Error {
    case shorttext
    case longtext
    case invalidCharacter(name: Character)
}
func check(firstName: String) throws {
    if firstName.count < 2 {
        throw ErrorHandling.shorttext
    } else if firstName.count > 10 {
        throw ErrorHandling.longtext
    }
    for name in firstName {
        guard name.isLetter else {
            throw ErrorHandling.invalidCharacter(name: name)
        }
    }
}
do {
   try check(firstName: "welcomeeeeeeee")
}
catch ErrorHandling.shorttext {
    print("firstname is too short.")
}
catch ErrorHandling.longtext {
    print("firstname is too long.")
}
catch ErrorHandling.invalidCharacter {
    print("invalid characteres.")
}
catch {
    print("unexpected error.")
}

//Type Checking
class TypeClass {
    var gender: String
    init(gender: String) {
        self.gender = gender
    }
}
class TypeTwo: TypeClass {
    var fname: String
    init(gender: String, fname: String) {
        self.fname = fname
        super.init(gender: gender)
    }
}
class TypeThree: TypeClass {
    var lname: String
    init(gender: String, lname: String) {
        self.lname = lname
        super.init(gender: gender)
    }
}
var lib = [ TypeTwo(gender: "Male", fname: "abc"),
            TypeTwo(gender: "Female", fname: "simform"),
            TypeThree(gender: "Female", lname: "solutions")]
var c = 0
var c1 = 0
for i in lib {
    if i is TypeTwo {
        c += 1
    } else if  i is TypeThree {
        c1 += 1
    }
}
print("fname:: \(c) lname: \(c1)")

//Type casting
for i in lib {
    if let na = i as? TypeTwo {
        print("Gender: \(na.gender) and Fname: \(na.fname)")
    } else if let nm = i as? TypeThree {
        print("Gender: \(nm.gender) and Lname: \(nm.lname)")
    }
}

class Emp {
    var demo = NestDemo()
}
class NestDemo {
    var eid = 10
    var ename = "abc"
    func display() -> String {
        return "eid: \(eid) and name: \(ename)"
    }
}
var ed = Emp()
print(ed.demo.display())

//enum inside class
class NestExamp {
    var num = 0
    enum Nest: Int {
        case one, two, three
    }
}
var ex = NestExamp.Nest.two.rawValue
print(ex)

//computed property to existing type
extension Int {
    var add: Int { return self + 10 }
}
var newEx = 7.add
print("Addition: \(newEx)")

//extension property access in class
class ClassExt {
    var val: Int = 0
}
extension ClassExt {
    var num: Int {
        return val * val
    }
}
var objExtension = ClassExt()
objExtension.val = 2
print(objExtension.num)

//public
class Animal {
    public var legCount: Int = 0
    public func display() {
        print("Total Legs:", legCount)
  }
}
var oanOb = Animal()
oanOb.legCount = 5
oanOb.display()

//private
private class PrivateDemo {
    var namep = "simform"
    func display() {
    print("Hellooo \(namep)")
  }
}
private var pri1 = PrivateDemo()
print("Name:", pri1.namep)
pri1.display()

//fileprivate
fileprivate class FileDemo {
    var namef = "hellooo"
    func displayf() {
        print("Hellooo fileprivate")
  }
}
fileprivate var objf = FileDemo()
print("Name:", objf.namef)
objf.displayf()

//internal
class InternalDemo {
    var namei = "helloo internal"
}
var obji = InternalDemo()
print("Name:", obji.namei)

//protocol class
protocol Message {
    var name: String { get }
    mutating func message()
}
class A: Message {
    var name = "morning"
    func message() {
        print("Good \(name)")
    }
}
var pobj = A()
pobj.message()

//protocol structure
protocol ProtoStruct {
    var name: String { get }
    func display()
}
struct ProtocolStruct: ProtoStruct {
    var name = ""
    func display() {
        print("Name: \(name)")
    }
}
var objp2 = ProtocolStruct(name: "vidhi")
objp2.display()

//protocol enum
protocol EnumProto {
    mutating func check()
}
enum ProtoEnum: EnumProto {
    case on, off
    mutating func check() {
        switch self {
        case .on:
            self = .on
            print("On")
        case .off:
            self = .off
            print("off")
        }
    }
}
var objEnum = ProtoEnum.off
objEnum.check()

//multiple protocol
protocol Add {
    func add()
}
protocol Sub {
    func sub()
}
class ProtocolDemo: Add, Sub {
    var num1 = 10
    var num2 = 5
    func add() {
        let sum = num1 + num2
        print("Sum: \(sum)")
    }
    func sub() {
        let sub = num1 - num2
        print("Sub: \(sub)")
    }
}
var mobj = ProtocolDemo()
mobj.add()
mobj.sub()

//protocol inheritance
protocol Product {
    var price: Int { get }
}
protocol Pen: Product {
    var pname: String { get }
}
class InheritDemo: Pen {
    var price = 10
    var pname = "Black Pen"
}
var inheritObj = InheritDemo()
print(inheritObj.pname)
print(inheritObj.price)

//protocol extension
protocol Proto {
    func display()
}
extension Proto {
    func check() {
        print("helloo")
    }
}
class ProtocolExtension: Proto {
    var name: String = ""
    func display() {
        print("Name: \(name)")
    }
}
var objExt = ProtocolExtension()
objExt.name = "vidhi"
objExt.display()
objExt.check()

//delegate
protocol Work: AnyObject {
    func doSomething()
}

class Manager {
    weak var del: Work?
    func passAlong() {
        del?.doSomething()
    }
}

class Employee2: Work {
    func doSomething() {
        print("Delegation")
    }
}
let man = Manager()
let dev = Employee2()
man.del = dev
man.passAlong()

//struct DEmo {
//    var name: String
//    var age: Int
//    init(age: Int) {
//        self.age = age
//    }
//}
//var objf1 = DEmo(age: 20)
//var objf2 = DEmo(name: "vidhi")
//print(objf2)

//guard-let multiple conditions
func checkJobEligibility() {
    var age: Int?
    var age2: Int?
    guard let age ,let age2 else {
        print("Not Eligible for Job")
        return
  }

  print("You are eligible for this job")

}

checkJobEligibility()

//class and static function
class NewDemo {
    class func display() {
        print("Hello")
    }
    static func check() {
        print("Hiii")
    }
}
//NewDemo.display()
//NewDemo.check()

class NewDemoChild: NewDemo {
    override class func display() {
        super.display()
        print("Child hii")
    }
    //Can't override static methods.
}
NewDemoChild.display()

//Generic function
func genDisplay<T>(display: T) {
    print("Data: ", display)
}
genDisplay(display: "vidhi")
genDisplay(display: 20)
genDisplay(display: 20.9093)
genDisplay(display: true)

//Type constaints in generic
func consDisplay<ele: Numeric>(num1: ele, num2: ele) {
    print("Sum:", num1 + num2)
}
consDisplay(num1: 10, num2: -2)
consDisplay(num1: 3.490, num2: 2)

//Generic class
class DemoGen<newGen> {
    var data: newGen
    init(data: newGen) {
        self.data = data
    }
    func display() -> newGen {
        self.data
    }
}
var objGen = DemoGen(data: "vidhi")
print(objGen.display())
var objGen2 = DemoGen(data: 20)
print(objGen2.display())

//name without initialization
class EmployeeNew {
    var name: String {
        "vidhi"
    }
}
var objEmp = EmployeeNew()
print(objEmp.name)

class NewExample {
    var name: String?
    var age: Int = 10
}
var objOf = NewExample()
print(objOf.name)

//Function Overloading in different class
class OverloadExample {
    var num = 0
    func check(num1: Int) {
        print("Number: \(num1)")
    }
}
class OverloadExampleChild: OverloadExample {
    var val1 = 0
    var val2 = 0
    func check(val1: Int, val2: Int) {
        print("Val1: \(val1) and Val2: \(val2)")
    }
}
var objOverload = OverloadExampleChild()
objOverload.check(num1: 10)
objOverload.check(val1: 20, val2: 30)

//Function Overloading in same class
class OverloadSame {
    var num1 = 0
    var num2 = 0
    func display(num1: Int) {
        print("number1: \(num1)")
    }
    func display(num1: Int, num2: Int) {
        print("number1: \(num1) and num2: \(num2)")
    }
}
var objOverload2 = OverloadSame()
objOverload2.display(num1: 10)
objOverload2.display(num1: 20, num2: 30)

//if-case
enum NewEnum {
    case one(Int)
}
let val = NewEnum.one(10)
if case .one(let n) = val {
    print(n)
}

//capture list
class Democ {
    var find = 1
    lazy var cl: () -> Void = { [find] in
        print(find)
        
    }
}
var objcl = Democ()
objcl.cl()

//if with enum
//enum NewEnumDemo {
//    case color(String)
//}
//var objEnum2 = NewEnumDemo.color("Black")
//if objEnum = .color {
//
//}
