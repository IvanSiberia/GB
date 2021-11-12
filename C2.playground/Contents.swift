import UIKit

let cetnExampl = 2
let neCetnExampl = 3

// 1. Написать функцию, которая определяет, четное число или нет.

func cetnost (number : Int ) -> Bool {
    if (number%2 == 0) {
//        print("число четное")
        return true
    } else {
//        print("число не четное")
        return false
    }
}
// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func cratnostTrem (number : Int) -> Bool {
    
    if (number%3 == 0) {
//        print ("число делится на 3 без остатка")
        return true
    } else {
//        print ("число не делится на 3 без остатка")
        return false
        
    }
}

// 3. Создать возрастающий массив из 100 чисел.

var arrayH  = [1]
for i in 2...100 {
    arrayH.append(i)
}

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for element in arrayH {
    if cetnost(number: element) {
        arrayH.remove(at: arrayH.firstIndex(of:element)!)
    } else if cratnostTrem(number: element){
        arrayH.remove(at: arrayH.firstIndex(of:element)!)
    }
}
print(arrayH)

// 
