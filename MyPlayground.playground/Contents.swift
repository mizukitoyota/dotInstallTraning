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
//class User {
//    let name: String
//    init(_ name: String) {//アンダースコアによりラベル不要、イニシャライズ
//        self.name = name//インスタンス化
//    }
//}
//class AdminUser: User {}
//
//let tom = User("tom")//インスタンス化
//let bob = AdminUser("bob")//インスタンス化
//
//let users: [User] = [tom, bob]//クラスを継承しているため別クラスでも一つのインスタンスにまとめることができる。
//
//for user in users {//ループ処理
////    if let u = user as? AdminUser {//オプショナルバインディング、型キャスト、クラスの型AdminUserの時のみ
////        print(u.name)//ボブのみプリント
////    }
//    if user is AdminUser {//AdminUserがuserに型キャスト可能か
//        let u = user as! AdminUser//強制アンラップ
//        print(u.name)//ボブ
//    }
//}

//NO.26
//プロトコルを適合させてみよう
//protocol Printable {//プロトコル（仕様書）
//    var type: String { get }//読み込み専用プロパティ
//    var count: Int { get set }//読み込み、代入可能プロパティ
//    func printout()//メソッド指定
//}
//
//class User: Printable {//Printableを適合したクラス
//    let type = "Laser"//初期値
//    var count = 0//初期値
//    let name: String
//    init(_ name: String) {//イニシャライズ
//        self.name = name//プロパティ
//    }
//    func printout() {//メソッド指定使用
//        count += 1//カウント１追加
//        print("\(type): \(count)")//Laser　＋　プリントした回数
//    }
//}
//
//let tom = User("tom")//インスタンス化
//tom.printout()//１、
//tom.printout()//２
//tom.printout()//３

//NO.27
//エクステンションで型を拡張しよう
// extension
//extension String {//既存の型(String)に追加
//    var length: Int {//計算
//        return self.characters.count//文字数計算
//    }
//}
//
//let msg = "hello"
//print(msg.characters.count)//５文字
//print(msg.length)//５文字

//protocol Printable {//プロトコル（仕様書）
//    func printout()//メソッド指定
//}
//
//extension Printable {//拡張
//    func printout() {//下記の処理追加
//        print("now printing...")
//    }
//}
//
//class User: Printable {//Printableを適合したクラス
//    let name: String//型指定
//    init(_ name: String) {//イニシャライズ
//        self.name = name//プロパティ
//    }
//}
//
//let tom = User("tom")//インスタンス化
//tom.printout()//now printing...//Userクラスに追加せずとも処理を追加できた

//NO.28
//値型と参照型について理解しよう
// Int, Double, Array .. -> 値型
// Class -> 参照型
//var original = 10//整数型、値型
//var copy = original // originalの値そのもの（変数）
//original = 20//上書き
//print(original) // 20
//print(copy) // 10
//class User {//参照型
//    var name: String//型指定
//    init(_ name: String) {//イニシャライズ
//        self.name = name//プロパティ
//    }
//}
//var original = User("tom")//インスタンス代入
//var copy = original // originalが格納されている場所(変数)
//original.name = "bob"//
//print(original.name) // "bob"
//print(copy.name) // "bob"上記originalと同じ

//NO.29
//構造体を使ってみよう,構造体,クラスとほぼ同機能,値型,継承ができない
//extension, 拡張　protocol、仕様書　継承可能
//class User {//参照型
//struct User {//構造体
//    var name: String//型指定
//    init(_ name: String) {//イニシャライズ
//        self.name = name//プロパティ
//    }
//    mutating func changeName() {//普通のメソッドでは不可、enum(列挙)と構造の時のみ使える
//        self.name = name.uppercased()//大文字化プロパティ
//    }
//}
//
//var original = User("tom")//インスタンス代入
//var copy = original // copy: originalの値,
//original.name = "bob"
//print(original.name) // bob,
//print(copy.name) // tom,

//NO.30
//列挙型を使ってみよう
//enum Direction {//列挙型、方向を表す値をまとめ
//    case right
//    case left
//}
//var dir: Direction//Direction型指定、
////dir = Direction.right//値割り当て
//dir = .right//上記短縮//right出力
//switch (dir) {//列挙型の値の漏れチェック
//case .right:
//    print("right")
//case .left:
//    print("left")
//}
//enum Direction: Int {//計算
//    case right = 1
//    case left = -1
//}
//print(Direction.right.rawValue)//１、rightの値

//NO.31
//ジェネリクスで型を汎用化しよう
// Generics//汎用化されたデータ型
//func getThree(x: Int) {//整数を3回渡す、戻り値
//func getThree<T>(x: T) {//型を汎用化、これにより型の制限なし
//    print(x)//１回
//    print(x)//２回
//    print(x)//３回
//}
////getThree(x: 5)//５が3つ
//getThree(x: "hello")//hello3つ
//getThree(x: 2.3)//2.3が３つ

//NO.32
//サブスクリプトを使ってみよう
// subscript//
//class Team {
//    var members = ["taguchi", "fkoji", "dotinstall"]//インデックス作成
//    subscript(index: Int) -> String {//サブスクリプト作成、返り値String
//        get {//参照
//            return members[index]//取得処理、membersのindex番
//        }
//        set {//更新
//            members.insert(newValue, at: index)//設定、index番にnewValue
//        }
//    }
//}
//var giants = Team()//インスタンス作成
////giants[0] = "taguchi"//インデックス
//print(giants[1]) // fkoji,二つ目
//giants[3] = "tanaka"//追加
//print(giants[3]) // tanaka、追加分

//NO.33
//guardを活用してみよう
// guard//非正常処理をわかりやすく
//func sayHi(_ msg: String?) {//関数、引数、オプショナル型
//    if let s = msg {//オプショナルバインディング
//        print(s)//NilではないならSを表示
//    } else {
//        print("value not set!")//Nilなら前述を宣言
//    }
//}
// early return, early exit//早期退出
//func sayHi(_ msg: String?) {//オプショナル型
//    if msg == nil {
//        print("value not set!")//Nilなら前述を宣言
//        return//終わり
//    }
//    print(msg!)//強制アンラップ
//}
//func sayHi(_ msg: String?) {//オプショナル型
//    guard let s = msg else {//オプショナルバインディング、msgがNIlでないならSに代入
//        print("value not set!")//NIlならこちら
//        return
//    }
//    print(s)//アンラップされた値が使える
//}
//sayHi(nil)//value not set!
//sayHi("hello")//hello

//NO.34
//例外処理をしてみよう
//enum LoginError: Error {//列挙型、Errorプロトコルと適合、例外作成
//    case emptyName
//    case shortName
//}
//class User {
//    let name: String
//    init(_ name: String) {//イニシャライズ
//        self.name = name//プロパティ
//    }
//    func login() throws {//ログインメソッド、例外処理の場合throws
//        guard name != "" else {//nameが空じゃないならそのまま、
//            throw LoginError.emptyName//空ならemptyNameを投げる
//        }
//        guard name.count > 5 else {//文字数が５より大きいならそのまま
//            throw LoginError.shortName//５以下ならshortNameを投げる
//        }
//        print("login success")//うまくいけばログイン
//    }
//}
////let tom = User("tom")//
////let tom = User("takahashi")
//let tom = User("")//please enter your name
//do {//エラー出る可能性のあるメソッド呼び出し
//    try tom.login()//メソッド呼び出し
//} catch LoginError.emptyName {//エラーの際の処理
//    print("please enter your name")
//} catch LoginError.shortName {//エラーの際の処理
//    print("too short")
//}

//NO.35
//Optional Chainingを使ってみよう
// Optional Chaining//「?」を記述してメソッドやプロパティにアクセス
//class User {
//    var name: String = ""
//}
//
//let user: User
//user = User()//インスタンス
//user.name = "him"//プロパティ
//let s = user.name.uppercased()//大文字表示
//print(s)//HIM
class User {
    var name: String? = ""//オプショナル型
}
let user: User?//オプショナル型
user = User()//nil
user?.name = "him//"
if let s = user?.name?.uppercased() {//nilならnil,オプショナル型ならバインディングで下記のように
    print(s)//HIM//
}
