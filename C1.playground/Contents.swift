import UIKit
import PlaygroundSupport

// 1
//коэффициенты

var a=1
var b=8
var c=12

//дискриминант
var D = (a*a) - 4*b*c

if D<0 {
    
    print("not today")
}

// 2

var kat1 = 5
var kat2 = 9

//гипотенуза

var res1 = kat1*kat1
var res2 = kat2*kat2
var res3 = res1+res2
var gip = sqrt(Double(res3))
//периметр
var  area = kat1 + kat2 + Int(gip)
//площадь
var s = kat1*kat2/2

// 3

let profitPercentPerPeriod:Double = 0.05
var deposit = 250
var period = 5

var resultProfit:Double = profitPercentPerPeriod * Double(period)
var resultDeposit:Double = resultProfit + Double(deposit)

