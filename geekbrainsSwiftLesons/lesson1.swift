import Foundation

func quadraticEquation(a:Double, b:Double, c:Double) {
    print("Квадратное уравнение:")
    if a == 0 {
        print("Константа 'a' не может быть равна 0!\n")
    }else{
        let discriminant : Double = b * b - 4 * a * c
        if discriminant > 0 {
            let x1 = (-b - discriminant.squareRoot()) / (2 * a)
            let x2 = (-b + discriminant.squareRoot()) / (2 * a)
            print("Корни уравнения: x1 = \(x1), x2 = \(x2)\n")
        }else if discriminant == 0{
            let x = -b / (2 * a)
            print("Уравнение имеет единственный корень: x = \(x)\n")
        }else{
            print("Уравнение не имеет действительных корней!\n")
        }
    }
}

func rightTriangle(a:Double, b:Double) {
    print("Прмоугольный треугольник:")
    print("Площадь = \(0.5*(a*b))")
    
    let hypotenuse:Double = (a*a + b*b).squareRoot()
    print("Периметр = \(a + b + hypotenuse)")
    
    print("Гипотенуза = \(hypotenuse)\n")
}

func bankDeposit(vklad:Double, proc:Double) {
    let afterFiveYears :Double = vklad + (proc * vklad * 5) / 100
    print("Сумма вклада через 5 лет =  \(afterFiveYears)\n")
}
