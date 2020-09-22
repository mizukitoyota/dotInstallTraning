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
