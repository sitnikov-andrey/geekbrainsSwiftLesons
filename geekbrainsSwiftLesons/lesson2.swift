import Foundation

func evenNum(number: Int) {
    if (number % 2 == 0){
        print("Число четное!")
    }else{
        print("Число не четное!")
    }
}

func dividedBy3(number: Int) {
    if (number % 3 == 0){
        print("\nЧисло делится на 3 без остатка!\n")
    }else{
        print("\nЧисло не делится на 3 без остатка!\n")
    }
}

func  createArray(){
    let numbers = Array(1...100).filter({$0 % 2 != 0 && $0 % 3 == 0})
    print(numbers)
}

func silmleNumbers() {
    var simpleNumbersList : [Int] = []
    var x = 2
    while simpleNumbersList.count != 100 {
        if checkSilmleNumber(number: x) == true{
            simpleNumbersList.append(x)
        }
        x += 1
    }
    print()
    print(simpleNumbersList)
    print()
}

func checkSilmleNumber(number : Int) -> Bool{
    if (number == 2){
        return true
    }
    for i in 2...number-1{
        if number % i == 0 {
            return false
        }
    }
    return true
}
