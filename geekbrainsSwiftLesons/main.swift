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

//Объекты класса машина

var firstSportCar = SportsCar(mark: "ferrari", year: 2018, engineState: .start, windowsState: .close, turboState: .on)
var secondSportCar = SportsCar(mark: "Lamborghini", year: 2020, engineState: .stop, windowsState: .open, turboState: .off)

var firstTrunk = TrunkCar(mark: "KAMAZ", year: 1992, engineState: .start, windowsState: .open, trunkVolume: 0, fullTrunkVolume: 100)
var secondTrunk = TrunkCar(mark: "MAN", year: 2009, engineState: .stop, windowsState: .close, trunkVolume: 25, fullTrunkVolume: 150)

firstSportCar.changeEngineState(engine: .stop)
firstSportCar.changeWindowsState(windows: .open)
firstSportCar.changeTurboState(turbo: .on)

secondSportCar.changeEngineState(engine: .start)
secondSportCar.changeWindowsState(windows: .close)
secondSportCar.changeTurboState(turbo: .off)

firstTrunk.changeEngineState(engine: .stop)
firstTrunk.changeWindowsState(windows: .open)
firstTrunk.changeTrunkVolume(action: .reload, value: 20)
firstTrunk.changeTrunkVolume(action: .load, value: 60)
firstTrunk.changeTrunkVolume(action: .load, value: 120)
firstTrunk.changeTrunkVolume(action: .reload, value: 50)

secondTrunk.changeEngineState(engine: .stop)
secondTrunk.changeWindowsState(windows: .open)
secondTrunk.changeTrunkVolume(action: .reload, value: 5)
secondTrunk.changeTrunkVolume(action: .load, value: 80)
secondTrunk.changeTrunkVolume(action: .load, value: 120)
secondTrunk.changeTrunkVolume(action: .reload, value: 1)

print(firstSportCar.description)
print(secondSportCar.description)
print(firstTrunk.description)
print(secondTrunk.description)
