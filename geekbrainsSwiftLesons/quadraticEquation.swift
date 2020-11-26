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
