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

//Урок 3
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

//Урок 4

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

//Урок 5
print("\nУрок 5\n")
var firstSportCar5 = SportCar5(mark: "ferrari", year: 2018, engineState: .start, windowsState: .close, turboState: .on)
var secondSportCar5 = SportCar5(mark: "Lamborghini", year: 2020, engineState: .stop, windowsState: .open, turboState: .off)

var firstTrunk5 = TrunkCar5(mark: "KAMAZ", year: 1992, engineState: .start, windowsState: .open, trunkVolume: 0, fullTrunkVolume: 100)
var secondTrunk5 = TrunkCar5(mark: "MAN", year: 2009, engineState: .stop, windowsState: .close, trunkVolume: 25, fullTrunkVolume: 150)

firstSportCar5.changeEngineState(engine: .stop)
firstSportCar5.changeWindowsState(windows: .open)
firstSportCar5.changeTurboState(turbo: .on)

secondSportCar5.changeEngineState(engine: .start)
secondSportCar5.changeWindowsState(windows: .close)
secondSportCar5.changeTurboState(turbo: .off)

firstTrunk5.changeEngineState(engine: .stop)
firstTrunk5.changeWindowsState(windows: .open)
firstTrunk5.changeTrunkVolume(action: .reload, value: 20)
firstTrunk5.changeTrunkVolume(action: .load, value: 60)
firstTrunk5.changeTrunkVolume(action: .load, value: 120)
firstTrunk5.changeTrunkVolume(action: .reload, value: 50)

secondTrunk5.changeEngineState(engine: .stop)
secondTrunk5.changeWindowsState(windows: .open)
secondTrunk5.changeTrunkVolume(action: .reload, value: 5)
secondTrunk5.changeTrunkVolume(action: .load, value: 80)
secondTrunk5.changeTrunkVolume(action: .load, value: 120)
secondTrunk5.changeTrunkVolume(action: .reload, value: 1)

print(firstSportCar5)
print(secondSportCar5)
print(firstTrunk5)
print(secondTrunk5)

//Дженерики
print("\nУрок 6\n")

var queueInMarket = Queue<Person>()
queueInMarket.stendInQueue(element: .init(name: "Andrey"))
queueInMarket.stendInQueue(element: .init(name: "Alexander"))
queueInMarket.stendInQueue(element: .init(name: "Olga"))
queueInMarket.stendInQueue(element: .init(name: "Nikolay"))
queueInMarket.stendInQueue(element: .init(name: "Andrey"))
queueInMarket.stendInQueue(element: .init(name: "Natasha"))

var olga = queueInMarket[3]
print(olga.name)

var natasha = queueInMarket[6]
print(natasha.name)

var anna = Person(name: "Anna")
queueInMarket.givePlaceInQueue(element: anna, index : 6)

anna = queueInMarket[6]
print(anna.name)

var andreyInQueue = queueInMarket.filter(predicate: {$0.name == "Andrey"})
print(andreyInQueue)
