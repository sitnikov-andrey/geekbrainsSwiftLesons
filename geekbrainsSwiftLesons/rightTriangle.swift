import Foundation

func rightTriangle(a:Double, b:Double) {
    print("Прмоугольный треугольник:")
    print("Площадь = \(0.5*(a*b))")
    
    let hypotenuse:Double = (a*a + b*b).squareRoot()
    print("Периметр = \(a + b + hypotenuse)")
    
    print("Гипотенуза = \(hypotenuse)\n")
}
