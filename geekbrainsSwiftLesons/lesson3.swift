import Foundation

struct SportCar {
    let mark : String
    let year : Int
    var trunkVolume : Int
    let fullTrunkVolume : UInt
    var engineState : EngineState
    var windowsState : WindowsState
    
    mutating func changeWindowsState(windows : WindowsState){
        switch windows {
        case .open:
            if (windowsState == .open){
                print("Двери уже открыты")
            }else{
                self.windowsState = .open
                print("Двери открылись")
            }
        case .close:
            if (windowsState == .close){
                print("Двери уже закрыты")
            }else{
                self.windowsState = .close
                print("Двери закрылись")
            }
        }
    }
    
    mutating func changeEngineState(engine : EngineState){
        switch engine {
        case .start:
            if (engineState == .start){
                print("Двигатель уже работает")
            }else{
                self.engineState = .start
                print("Мотор запустился")
            }
        case .stop:
            if (engineState == .stop){
                print("Мотор уже заглушен")
            }else{
                self.engineState = .stop
                print("Мотор заглох")
            }
        }
    }
    
    mutating func changeTrunkVolume(action : LoadReloadTrunk, value : Int){
        switch action{
        case .load:
            if (self.trunkVolume + value > self.fullTrunkVolume){
                print("В багажнике столько не поместится")
            }else{
                self.trunkVolume += value
                print("В багажнике \(self.trunkVolume) единиц груза")
            }
        case .reload:
            if (self.trunkVolume - value < 0){
                print("В багажнике нет столько груза")
            }else{
                self.trunkVolume -= value
                print("В багажнике \(self.trunkVolume) единиц груза")
            }
        }
    }
}

struct Truck {
    let mark : String
    let year : Int
    var trunkVolume : Int
    let fullTrunkVolume : UInt
    var engineState : EngineState
    var windowsState : WindowsState
    
    mutating func changeWindowsState(windows : WindowsState){
        switch windows {
        case .open:
            if (windowsState == .open){
                print("Двери уже открыты")
            }else{
                self.windowsState = .open
                print("Двери открылись")
            }
        case .close:
            if (windowsState == .close){
                print("Двери уже закрыты")
            }else{
                self.windowsState = .close
                print("Двери закрылись")
            }
        }
    }
    
    mutating func changeEngineState(engine : EngineState){
        switch engine {
        case .start:
            if (engineState == .start){
                print("Двигатель уже работает")
            }else{
                self.engineState = .start
                print("Мотор запустился")
            }
        case .stop:
            if (engineState == .stop){
                print("Мотор уже заглушен")
            }else{
                self.engineState = .stop
                print("Мотор заглох")
            }
        }
    }
    
    mutating func changeTrunkVolume(action : LoadReloadTrunk, value : Int){
        switch action{
        case .load:
            if (self.trunkVolume + value > self.fullTrunkVolume){
                print("В прицеп столько не поместится")
            }else{
                self.trunkVolume += value
                print("В прицепе \(self.trunkVolume) единиц груза")
            }
        case .reload:
            if (self.trunkVolume - value < 0){
                print("В прицеп нет столько груза")
            }else{
                self.trunkVolume -= value
                print("В прицепе \(self.trunkVolume) единиц груза")
            }
        }
    }
    
}

enum EngineState {
    case start, stop
}

enum WindowsState {
    case open, close
}

enum LoadReloadTrunk {
    case load, reload
}
