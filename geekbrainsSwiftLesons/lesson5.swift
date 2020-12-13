import Foundation

protocol Car5 {
    var mark : String {get}
    var year : Int {get}
    var engineState : EngineState {get set}
    var windowsState : WindowsState {get set}
}

extension Car5 {
    mutating func changeWindowsState(windows : WindowsState){
        switch windows {
        case .open:
            if (windowsState == .open){
                print("Двери \(mark) уже открыты")
            }else{
                self.windowsState = .open
                print("Двери \(mark) открываются вверх")
            }
        case .close:
            if (windowsState == .close){
                print("Двери \(mark) уже закрыты")
            }else{
                self.windowsState = .close
                print("Двери \(mark) плавно закрываются")
            }
        }
    }
    
   mutating func changeEngineState(engine: EngineState) {
        switch engine {
        case .start:
            if (engineState == .start){
                print("Мотор \(mark) уже работает")
            }else{
                self.engineState = .start
                print("Мотор \(mark) запустился")
            }
        case .stop:
            if (engineState == .stop){
                print("Мотор \(mark) уже заглушен")
            }else{
                self.engineState = .stop
                print("Мотор \(mark) заглох")
            }
        }
    }
    
}

class TrunkCar5 : Car5 {
    var mark: String
    var year: Int
    var engineState: EngineState
    var windowsState: WindowsState
    var trunkVolume : Int
    let fullTrunkVolume : UInt
    
    init(mark : String, year : Int, engineState : EngineState, windowsState : WindowsState, trunkVolume : Int, fullTrunkVolume : UInt){
        self.mark = mark
        self.year = year
        self.engineState = engineState
        self.windowsState = windowsState
        self.trunkVolume = trunkVolume
        self.fullTrunkVolume = fullTrunkVolume
    }
    
    var description : String {
        return "\(mark), \(year), \(engineState), \(windowsState), \(trunkVolume), \(fullTrunkVolume)"
    }

    func changeTrunkVolume(action : LoadReloadTrunk, value : Int){
        switch action{
        case .load:
            if (trunkVolume + value > fullTrunkVolume){
                print("В прицеп грузовика \(mark) столько не поместится")
            }else{
                trunkVolume += value
                print("В прицепе грузовика \(mark) \(trunkVolume) единиц груза")
            }
        case .reload:
            if (trunkVolume - value < 0){
                print("В прицеп грузовика \(mark) нет столько груза")
            }else{
                trunkVolume -= value
                print("В прицепе грузовика \(mark) \(trunkVolume) единиц груза")
            }
        }
    }
}

class SportCar5 : Car5 {

    var mark: String
    var year: Int
    var engineState: EngineState
    var windowsState: WindowsState
    var turboState : TurboState

    init(mark : String, year : Int, engineState : EngineState, windowsState : WindowsState, turboState : TurboState){
        self.mark = mark
        self.year = year
        self.engineState = engineState
        self.windowsState = windowsState
        self.turboState = turboState
    }
    
    var description : String {
        return "\(mark), \(year), \(engineState), \(windowsState), \(turboState)"
    }
    
    func changeTurboState (turbo : TurboState) {
        switch turbo {
        case .off:
            if (turboState == .off){
                print("Турбина спорт-кара \(mark) уже выключина")
            }else{
                turboState = .off
                print("Турбина спорт-кара \(mark) отключилась")
            }
        case .on:
            if (turboState == .on){
                print("Турбина спор-кара \(mark) уже включена")
            }else{
                turboState = .on
                print("Турбина спорт-кара \(mark) запустилась")
            }
        }
    }
}

extension TrunkCar5 : CustomStringConvertible {
    
}

extension SportCar5 : CustomStringConvertible {
    
}
