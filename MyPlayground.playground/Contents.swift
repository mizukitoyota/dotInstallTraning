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
