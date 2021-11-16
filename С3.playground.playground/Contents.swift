import UIKit

enum Transmission {
    
    case manual, automatic
}
enum AutoBrands {
    case AUDI
    case VOLKSWAGEN
    case PORCHE
    case LEXUS
    case MERSEDES
    case TOYOTA
    case HONDA
    case MAZDA
}

enum CarBody {
    case sedan
    case trunk
    case suv
    case cabrio
    case van
    case coupe
    case sportback
}

enum EngineStatus {
    case on, off
}
enum WindowsPosition {
    case open, close
}
enum trunkLoading {
    
    case loadAFullTrunk
    case loadAHalfTrunk
    case unLoadAFullTrunk
    case unLoadAHalfTrunk
}

struct car {
    let brand : AutoBrands
    let yersOfIssued : Int
    let carBody : CarBody
    let trunkCapacity : Int
    var engineStatus : EngineStatus
    var windowsPosition : WindowsPosition
    var fullnessOfTheTrunk : Int
    
    mutating func engineKeyTurn (action : EngineStatus) {
        switch action {
        case .on :
            print("Key was turned and Engine on")
            self.engineStatus = .on
        case .off:
            print("Key was turned and Engine off")
            self.engineStatus = .off       }
    }
    mutating func windowButtonPushed (action : WindowsPosition) {
        switch action {
        case .open :
            print("windows was open")
            self.windowsPosition = .open
        case .close:
            print("windows was close")
            self.windowsPosition = .close       }
    }
    
    func carInfo() {
        print("Auto \(brand), is \(carBody), from \(yersOfIssued) year, have trunk capacity \(trunkCapacity) , and right now window is \(windowsPosition), engine is \(engineStatus) ")
    }
}

var SQ5 = car(brand: .AUDI, yersOfIssued: 2015, carBody: .suv, trunkCapacity: 500, engineStatus: .off, windowsPosition: .close, fullnessOfTheTrunk: .max)

SQ5.carInfo()
SQ5.engineKeyTurn(action: .on)

