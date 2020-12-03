import Foundation

//Квадратное уравнение
quadraticEquation(a:1, b:2, c:3)

//Прямоугольный треугольник
rightTriangle(a:3, b:4)

//Вклад в банк
bankDeposit(vklad:1000, proc:5)

//Четность числа
evenNum(number: 6)

//Деление на 3
dividedBy3(number: 4)

//Создаем список всех нечетных чисел, которые делются на 3
createArray()

//Списоу 100 простых чисел
silmleNumbers()

// Объекты машин
var sportCar = SportCar(mark : "VAZ", year : 2010, trunkVolume : 0, fullTrunkVolume : 20, engineState : .start, windowsState : .close)

var truck = Truck(mark : "KAMAZ", year : 1999, trunkVolume : 15, fullTrunkVolume : 100, engineState : .stop, windowsState : .open)

sportCar.changeEngineState(engine: .stop)
sportCar.changeWindowsState(windows: .close)
sportCar.changeWindowsState(windows: .open)
sportCar.changeTrunkVolume(action: .reload, value: 10)
sportCar.changeTrunkVolume(action: .load, value: 10)
sportCar.changeTrunkVolume(action: .load, value: 11)
sportCar.changeTrunkVolume(action: .reload, value: 5)

truck.changeEngineState(engine: .start)
truck.changeWindowsState(windows: .close)
truck.changeTrunkVolume(action: .reload, value: 20)
truck.changeTrunkVolume(action: .load, value: 60)
truck.changeTrunkVolume(action: .load, value: 80)
truck.changeTrunkVolume(action: .reload, value: 50)

print(sportCar)
print(truck)
