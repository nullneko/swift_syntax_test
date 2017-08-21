//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

//60 * 60 * 24

// ここから定数・変数に関しての基礎構文

//let value = 50

// 定数に対して再代入になるため不可
//var value = 50
//var value2 = 50

// ここまで

// ここから型指定の変数定義
// let 定数名: 型 = 値
// var 変数名: 型 = 値

// 小数点・Double > Float
// 型指定に関しては、頭文字を大文字で記載すること
// 数値 例
let number: Int = 50
let value = 50.1
let value2: Double = 50.1
let value3: Float = 50.1

// 論理型 boolean
let scalar = true
let scalar2: Bool = false

// 文字列
// var -> let への代入も不可。そもそも定数と変数という違い
let str = "test"
let str2: String = "hoge"

// swiftは、型推論がそもそもあるため認識することが可能

// print練習
print("これは、\(str)です")

// for 文
for i in (1 ..< 3){
    print("for文の\(str)です")
}

// 条件分岐
let num: Int = 60
if num < 70 {
    print("これは条件分岐です")
}

// switch
switch num {
case 0..<50:
    print("50以下")
case 50..<69:
    print("69未満")
case 69..<100:
    print("70~100未満")
default:
    print("対象外")
}

// 関数
var a = 0
for i in 1 ... 10 {
    a = a + i
}
print(a)

func total() {
    var b = 0
    for i in 1 ... 10 {
        b = b + i
    }
    print(b)
}

func subTotal(c:Int) {
    var b = 0
    for i in 1 ... c {
        b = b + i
    }
    print(b)
}

// 三項演算式 文字列とIntを比較するエラーになる?
func sumTotal(_ h:Int) {
    let t = (h == 0 ) ? "日本語" : "English"
    print(t)
}

let j = 7
print((j % 2 == 0) ? "偶数" : "奇数")

func sum() {
    let g = 100
    let p = (g % 3 == 0) ? "偶数" : "奇数"
    print(p)
}

total()
subTotal(c: 7)
sumTotal(100)
sumTotal(0)
sum()
let 日本語 = 1
print(日本語)



/// classの作成

class Car {
    var fuel: Int
    var name: String
    let maxFuel = 50
    
    init() {
//   プロパティと異なりinitに対して(class)に対しての引数を渡したい場合は以下のような記述を行う
//  init(name: String, fuel: Int){
        name = "車"
//        self. と書くことでclass自身をさすなので引数に応じて
//        classのプロパティを動的に書き換えたい場合に使ったりする
//        より抽象的にプログラミングをオブジェクト指向で作成するなら極力ベタ書きはない方がいいと思う
//        self.name = name
        fuel = maxFuel
//        self.fuel = fuel
    }
    
    // 燃料を満タンにするメソッド
    func fullItUp() {
        fuel = maxFuel
    }
    
    func drive(km:Int) {
        fuel -= km * 10
    }
}

// classを使ってみる

var car = Car()
print(car.name) // 車
print(car.fuel) // 50
car.drive(km:2)
print(car.fuel) // 30
car.fullItUp()
print(car.fuel) // 回復


// Car classを継承する
// そのまま内容を使うのであれば書かず
//　手を加えるなら明示的にoverride func or init を記載し中身にを上書きする
class SampleCar: Car {
    override init() {
        super.init()
        name = "小型車"
    }
    
    override func drive(km:Int) {
        fuel -= km * 5
    }
}


// 基本的に変数に対してnilを代入できない
// それを可能にする記述は以下
// error 例
//var lang: String = "swfit"
//lang = nil

// error にならない これはオプショナル型と呼ばれるもの
var lang: String? = "swift"
lang = nil




