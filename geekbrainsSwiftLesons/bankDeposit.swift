import Foundation

func bankDeposit(vklad:Double, proc:Double) {
    let afterFiveYears :Double = vklad + (proc * vklad * 5) / 100
    print("Сумма вклада через 5 лет =  \(afterFiveYears)")
}
