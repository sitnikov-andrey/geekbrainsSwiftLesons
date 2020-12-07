import Foundation

class Car{
    let mark : String
    let year : Int
    var engineState : EngineState
    var windowsState : WindowsState
    
    init(mark : String, year : Int, engineState : EngineState, windowsState : WindowsState){
        self.mark = mark
        self.year = year
        self.engineState = engineState
        self.windowsState = windowsState
    }
    
    func changeWindowsState(windows : WindowsState){
        
    }
    
    func changeEngineState(engine : EngineState){
        
    }
}

class SportsCar : Car {
    var turboState : TurboState
    
    init(mark : String, year : Int, engineState : EngineState, windowsState : WindowsState, turboState : TurboState){
        self.turboState = turboState
        
        super.init(mark: mark, year: year, engineState: engineState, windowsState: windowsState)
    }
    
    var description : String {
        return "\(mark), \(year), \(engineState), \(windowsState), \(turboState)"
    }
    
    override func changeEngineState(engine: EngineState) {
        switch engine {
        case .start:
            if (engineState == .start){
                print("Мотор спорт-кара \(mark) уже работает")
            }else{
                engineState = .start
                print("Мотор спорт-кара \(mark) запустился")
            }
        case .stop:
            if (engineState == .stop){
                print("Мотор спорт-кара \(mark) уже заглушен")
            }else{
                engineState = .stop
                print("Мотор спорт-кара \(mark) заглох")
            }
        }
    }
    
    override func changeWindowsState(windows: WindowsState) {
        switch windows {
        case .open:
            if (windowsState == .open){
                print("Двери спорт-кара \(mark) уже открыты")
            }else{
                windowsState = .open
                print("Двери спорт-кара \(mark) открываются вверх")
            }
        case .close:
            if (windowsState == .close){
                print("Двери спор-кара \(mark) уже закрыты")
            }else{
                windowsState = .close
                print("Двери спорт-кара \(mark) плавно закрываются")
            }
        }
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

enum TurboState {
    case off, on
}

class TrunkCar : Car {
    var trunkVolume : Int
    let fullTrunkVolume : UInt
    
    init(mark : String, year : Int, engineState : EngineState, windowsState : WindowsState, trunkVolume : Int, fullTrunkVolume : UInt){
        self.trunkVolume = trunkVolume
        self.fullTrunkVolume = fullTrunkVolume
        
        super.init(mark: mark, year: year, engineState: engineState, windowsState: windowsState)
    }
    
    var description : String {
        return "\(mark), \(year), \(engineState), \(windowsState), \(trunkVolume), \(fullTrunkVolume)"
    }
    
    override func changeWindowsState(windows: WindowsState) {
        switch windows {
        case .open:
            if (windowsState == .open){
                print("Двери грузовика \(mark) уже открыты")
            }else{
                windowsState = .open
                print("Двери грузовика \(mark) открываются со скрипом")
            }
        case .close:
            if (windowsState == .close){
                print("Двери грузовика \(mark) уже закрыты")
            }else{
                windowsState = .close
                print("Двери грузовика \(mark) закрываются с хлопком")
            }
        }
    }
    
    override func changeEngineState(engine: EngineState) {
        switch engine {
        case .start:
            if (engineState == .start){
                print("Мотор грузовика \(mark) уже работает")
            }else{
                engineState = .start
                print("Мотор грузовика \(mark) запустился и задымил")
            }
        case .stop:
            if (engineState == .stop){
                print("Мотор грузовика \(mark) уже заглушен")
            }else{
                engineState = .stop
                print("Мотор грузовика \(mark) заглох")
            }
        }
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
