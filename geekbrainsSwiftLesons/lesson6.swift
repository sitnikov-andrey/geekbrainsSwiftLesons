import Foundation

class Person {
    let name : String
    init(name : String){
        self.name = name
    }
}

class Automobile {
    let mark : String
    init(mark : String){
        self.mark = mark
    }
}

struct Queue<T> {
    var elements: [T] = []
    
    mutating func givePlaceInQueue(element: T, index : Int) {
        elements.insert(element, at: index-1)
    }
    
    mutating func removeFromQueue(){
        elements.removeLast()
    }
    
    mutating func stendInQueue(element: T) {
        elements.append(element)
    }
    
    func indexIsValid(index : Int) -> Bool {
        return index >= 0 && index <= elements.count
    }
    
    subscript(numberInQueue : Int) -> T {
        assert(indexIsValid(index : numberInQueue), "Index out of range")
        return elements[numberInQueue - 1]
    }
    
}

extension Queue {
    func filter(predicate:(T) -> Bool) -> [Int] {
        var placesInQueue = [Int]()
        for (index, element) in elements.enumerated(){
            if (predicate(element)){
                placesInQueue.append(index+1)
            }
        }
        return placesInQueue
    }
}

