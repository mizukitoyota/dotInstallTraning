import UIKit

////NO.3
////定数　let
////変数 var
//
//var msg: String
//msg = "hello world"//型推論
//msg = "hello again"
//print(msg)
//
////NO.4
////Int
////let i: Int = 10
//let i = 10
//
////Float Double
//let d = 53.8
//
////String
//let S = "hello"
//
////Bool ture/false
//let flag = true
//
//var X = "five"
//X = "6"
//X = String(5)
//
////NO.7
////switch
//
//let num = 10
//
//switch num {
//case 0:
//    print ("zero")
//case 1,2,3:
//    print("small")
//case 4...6:
//    print ("4/5/6")
//case 7..<9:
//    print("7/8")
//case let n where n > 20:
//    print("\(n) is huge!")
//default:
////    print("n.a")
//    break
//}
//
////NO.9
//// for 変数　in データの集合　{　処理　}
////break
////continue
//
//for i in 0...10 {
//    if i == 4 {
////        break
//        continue
//    }
//    print(i)
//}
//
////NO.10
////nil
//
////let s :String = nil
////let s: Optional<String> = nil
//var s: String? = nil
//if s != nil {
//        print(s!)//unwrap
//}
////print(s ?? "this is nil")
//
////optinai Biding
////if let value = s {
////    print(value)
////}
//print(s ?? "this is nil!")
//
////NO.14
////配列、タプル
////集合
////辞書
//
////var sales: Dictionary<String, Int> = ["taguchi": 200, "fkoji": 300]
//var sales = ["taguchi": 200, "fkoji": 300] //型推論
//sales["fkoji"] = 500
//print(sales["taguchi"] ?? "n.a")
//sales["dotinstall"] = 400
//print(sales.count)
//print(sales.values)
//for(key,value) in sales {
//    print("\(key): \(value)")
//}
////let SS = [String: Int]()
////print(SS.isEmpty)
//
////NO.15
//// 関数
////func sayHi() {
////    print("hi")
////}
////sayHi()
//func sayHi() -> String {
//    return "hi"
//}
//print(sayHi())
//
////NO.16
//// 引数
////func sayHi(name: String) {
////    print("hi \(name)")
////}
////sayHi(name: "tom")
//
////func sayHi(from name: String) {
////    print("hi \(name)")
////}
////sayHi(from: "tom")
//
////func sayHi(_ name: String) {
////    print("hi \(name)")
////}
////sayHi("tom")
//
//func sayHi(_ name: String = "tom") {
//    print("hi \(name)")
//}
//sayHi()
//
////NO.18
//// Class
//class User {
//    let name: String
//    var score: Int
//    init() {
//        self.name = "me!"
//        self.score = 23
//    }
//}
////let user: User = User()
//let user = User() // instance
//print(user.name)
//print(user.score)
//user.score = 22
//print(user.score)
////NO.19
//// Class
//class Users {
//    let name: String
//    var score: Int
//    //    init(name: String, score: Int) {
//    init(_ name: String, _ score: Int) {
//        self.name = name
//        self.score = score
//    }
//    init() {
//        self.name = "bob"
//        self.score = 15
//    }
//}
////let tom = User(name: "tom", score: 23)
//let tom = Users("tom", 20)
//print(tom.name)
//print(tom.score)
//let bob = User()
//print(bob.name)
//print(bob.score)
////NO.20
//// Class
//class Userss {
//    let name: String
//    var score: Int
////    var level: Int {
////        get {
////            return Int(score / 10)
////        }
////        set {
////            if newValue >= 0 {
////                score = newValue * 10
////            }
////        }
////    }
//var level: Int {
//    return Int(score / 10)
//}
//init(_ name: String, _ score: Int) {
//    self.name = name
//    self.score = score
//    }
//}
////let tom = User("tom", 23)
////print(tom.level) // 2
////tom.level = 5
////print(tom.score) // 50
////tom.level = -3
////print(tom.score) // 50
//
////NO.21
//class Usersss {
//    let name: String
//    var score: Int {
//        willSet {
//            print("\(score) -> \(newValue)")
//        }
//        didSet {
//            print("Changed: \(score - oldValue)")
//        }
//    }
//    init(_ name: String, _ score: Int) {
//        self.name = name
//        self.score = score
//    }
//}
//let tomg = Usersss("tom", 21)
//tom.score = 78
//tom.score = 90
//
////NO.22
//class Userq {
//    let name: String
//    var score: Int
//    init(_ name: String, _ score: Int) {
//        self.name = name
//        self.score = score
//    }
//    //    func sayHi() {
//    //        print("hi \(name)")
//    //    }
//    //    func sayHi(msg: String) {
//    func sayHi(_ msg: String) {
//        print("\(msg) \(name)")
//    }
//}
//let tomH = Userq("tom", 23)
//tomH.sayHi("hola")

//NO.23
//クラスを継承してみよう
// 継承
// User  ->  AdminUser
//class User {//親クラス
//    let name: String//プロパティ
//    var score: Int//プロパティ
//    init(_ name: String, _ score: Int) {//指定イニシャライザ
//        self.name = name//イニシャライズした値をプロパティに
//        self.score = score//イニシャライズした値をプロパティに
//    }
//    final func sayHi() {//メソッド、継承、オーバーライド禁止（サブクラス）ここで上書き禁止にしたため、下記のoverrideではコンパイルエラーが発生
//        print("hi \(name)")
//    }
//}
//
//class AdminUser: User {//子クラス、親クラス指定
//    func sayHello() {//メソッド追加
//        print("hello \(name)")
//    }
//    override func sayHi() {//親クラスメソッド上書き、上記のfinalにて上書き禁止のためエラー発生
//        print("[admin] hi \(name)")//[admin] hi bob
//    }
//}
//
//let tom = User("tom", 23)//インスタンス
//let bob = AdminUser("bob", 33)//インスタンス
//print(bob.name)//bob
//print(bob.score)//33
//bob.sayHi()//hi bob
//bob.sayHello()//hello bob

//NO.24
//型プロパティ､型メソッドを使おう
//class User {//クラス
//    let name: String
//    var score: Int
//    static var count = 0//静的変数、初期化一度のみ
//    init(_ name: String, _ score: Int) {//指定イニシャライズ
//        self.name = name//イニシャライズした値をプロパティに
//        self.score = score//イニシャライズした値をプロパティに
//        User.count += 1//インスタンス化するたびカウント
//    }
//    func sayHi() {
//        print("hi \(name)")
//    }
//    class func getInfo() {//インスタンス化なしで使用可能、クラスメソッド、staticはオーバーライド不可
//        print("\(count) instances")//インスタンスをカウント
//    }
//}
//
//class AdminUser: User {
//    func sayHello() {
//        print("hello \(name)")//
//    }
//    override func sayHi() {
//        print("[admin] hi \(name)")
//    }
//    override class func getInfo() {//上記で使用したメソッドを上書き
//        print("[admin] \(count) instances")//子クラスでのインスタンス化をカウント
//    }
//}
//
//User.getInfo()//ここで0、インスタンス化なしで呼び出し
//let tom = User("tom", 23)//インスタンス化
//User.getInfo()//ここで1
//
//AdminUser.getInfo()//ここで上記を引き継ぎ１
//let bob = AdminUser("bob", 33)//インスタンス化
//AdminUser.getInfo()//ここで２
//AdminUser.getInfo()//これで2
////print(bob.name)//インスタンス使用呼び出し
////print(bob.score)//インスタンス使用呼び出し
////bob.sayHi()//インスタンス使用呼び出し
////bob.sayHello()//インスタンス使用呼び出し

//NO.25
//型キャストを使ってみよう
class User {
    let name: String
    init(_ name: String) {//アンダースコアによりラベル不要、イニシャライズ
        self.name = name//インスタンス化
    }
}
class AdminUser: User {}

let tom = User("tom")//インスタンス化
let bob = AdminUser("bob")//インスタンス化

let users: [User] = [tom, bob]//クラスを継承しているため別クラスでも一つのインスタンスにまとめることができる。

for user in users {//ループ処理
//    if let u = user as? AdminUser {//オプショナルバインディング、型キャスト、クラスの型AdminUserの時のみ
//        print(u.name)//ボブのみプリント
//    }
    if user is AdminUser {//AdminUserがuserに型キャスト可能か
        let u = user as! AdminUser//強制アンラップ
        print(u.name)//ボブ
    }
}
