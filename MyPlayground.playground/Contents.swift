import UIKit

//NO.3
//定数　let
//変数 var

var msg: String
msg = "hello world"//型推論
msg = "hello again"
print(msg)

//NO.4
//Int
//let i: Int = 10
let i = 10

//Float Double
let d = 53.8

//String
let S = "hello"

//Bool ture/false
let flag = true

var X = "five"
X = "6"
X = String(5)

//NO.7
//switch

let num = 10

switch num {
case 0:
    print ("zero")
case 1,2,3:
    print("small")
case 4...6:
    print ("4/5/6")
case 7..<9:
    print("7/8")
case let n where n > 20:
    print("\(n) is huge!")
default:
//    print("n.a")
    break
}

//NO.9
// for 変数　in データの集合　{　処理　}
//break
//continue

for i in 0...10 {
    if i == 4 {
//        break
        continue
    }
    print(i)
}

//NO.10
//nil

//let s :String = nil
//let s: Optional<String> = nil
var s: String? = nil
if s != nil {
        print(s!)//unwrap
}
//print(s ?? "this is nil")

//optinai Biding
//if let value = s {
//    print(value)
//}
print(s ?? "this is nil!")

//NO.14
//配列、タプル
//集合
//辞書

//var sales: Dictionary<String, Int> = ["taguchi": 200, "fkoji": 300]
var sales = ["taguchi": 200, "fkoji": 300] //型推論
sales["fkoji"] = 500
print(sales["taguchi"] ?? "n.a")
sales["dotinstall"] = 400
print(sales.count)
print(sales.values)
for(key,value) in sales {
    print("\(key): \(value)")
}
//let SS = [String: Int]()
//print(SS.isEmpty)

//NO.15
// 関数
//func sayHi() {
//    print("hi")
//}
//sayHi()
func sayHi() -> String {
    return "hi"
}
print(sayHi())

//NO.16
// 引数
//func sayHi(name: String) {
//    print("hi \(name)")
//}
//sayHi(name: "tom")

//func sayHi(from name: String) {
//    print("hi \(name)")
//}
//sayHi(from: "tom")

//func sayHi(_ name: String) {
//    print("hi \(name)")
//}
//sayHi("tom")

func sayHi(_ name: String = "tom") {
    print("hi \(name)")
}
sayHi()

//NO.18
// Class
class User {
    let name: String
    var score: Int
    init() {
        self.name = "me!"
        self.score = 23
    }
}
//let user: User = User()
let user = User() // instance
print(user.name)
print(user.score)
user.score = 22
print(user.score)
//NO.19
// Class
class Users {
    let name: String
    var score: Int
    //    init(name: String, score: Int) {
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    init() {
        self.name = "bob"
        self.score = 15
    }
}
//let tom = User(name: "tom", score: 23)
let tom = Users("tom", 20)
print(tom.name)
print(tom.score)
let bob = User()
print(bob.name)
print(bob.score)
//NO.20
// Class
class Userss {
    let name: String
    var score: Int
//    var level: Int {
//        get {
//            return Int(score / 10)
//        }
//        set {
//            if newValue >= 0 {
//                score = newValue * 10
//            }
//        }
//    }
var level: Int {
    return Int(score / 10)
}
init(_ name: String, _ score: Int) {
    self.name = name
    self.score = score
    }
}
//let tom = User("tom", 23)
//print(tom.level) // 2
//tom.level = 5
//print(tom.score) // 50
//tom.level = -3
//print(tom.score) // 50

//NO.21
class Usersss {
    let name: String
    var score: Int {
        willSet {
            print("\(score) -> \(newValue)")
        }
        didSet {
            print("Changed: \(score - oldValue)")
        }
    }
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}
let tomg = Usersss("tom", 21)
tom.score = 78
tom.score = 90

//NO.22
class Userq {
    let name: String
    var score: Int
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    //    func sayHi() {
    //        print("hi \(name)")
    //    }
    //    func sayHi(msg: String) {
    func sayHi(_ msg: String) {
        print("\(msg) \(name)")
    }
}
let tomH = Userq("tom", 23)
tomH.sayHi("hola")
