
import UIKit

enum windows {
    case open, close
}

enum engine {
    case start, stop
}

protocol Car: AnyObject {
    var model: String {get}
    var releaseYear : Int {get}
    var windows: windows {get set}
    var engine: engine {get set}
}

extension Car {
    func Windows(status: windows) {
        switch status {
        case .open :
            print("\(model): windows r opening")
            self.windows = .open
        case .close:
            print("\(model): windows r closing")
            windows = .close
        }
    }
    
    func Engine(status: engine) {
        switch status {
        case .start:
            print("\(model): engine was start ")
            self.engine = .start
            
        case .stop:
            ("\(model): engine was off")
            self.engine = .stop
        }
    }
}

protocol TrunkCar: Car {
    var bodyVolume: Int {get}
    var bodyEmptySpace: Int {get}
    var cargoVolume: Int {get set}
}

extension TrunkCar {
    func PutCargoToBody(volume: Int) {
        if bodyEmptySpace >= volume {
            print("\(model): cargo volume \(volume) put on the body ")
            self.cargoVolume += volume
        } else {
            print("?\(model): Not enough space in the body for cargo volume \(volume) ")
        }
    }
    
    func RemoveCargoFromBoddy(volume: Int) {
        if self.bodyVolume >= volume {
            print("\(model): cargo volume \(volume) removing from the body ")
            self.cargoVolume -= volume
        } else {
            print("? \(model): No such amount of cargo(\(volume)) in the body ")
        }
    }
}

protocol SportCar: Car {
    var maxSpeed: Int {get}
    var currentSpeed: Int{get set}
}

extension SportCar {
    func IncreaseSpeed(speed: Int) {
        if speed + currentSpeed  <= maxSpeed {
            print("\(model): up to speed \(speed) ")
            self.currentSpeed += speed
        } else {
            print("\(model): can't accelerate to speed \(speed + currentSpeed) max speed - \(maxSpeed)")
        }
        
        func DecreaseSpeed(speed: Int) {
            if self.currentSpeed >= speed {
                print("\(model): slow down \(speed)")
                self.currentSpeed -= speed
            } else {
                print("? \(model): stops ")
                self.currentSpeed = 0
        }
    }
 }
}

class trunkCar: TrunkCar {
    var model: String
    var releaseYear: Int
    var windows: windows
    var engine: engine
    let bodyVolume: Int
    var bodyEmptySpace: Int {
        get {
            return bodyVolume - cargoVolume
        }
    }
    
    var cargoVolume: Int
    
    init(model: String, realeseYear: Int, bodyVolume: Int) {
        self.bodyVolume = bodyVolume
        self.releaseYear = realeseYear
        self.cargoVolume = 0
        self.model = model
        self.engine = .stop
        self.windows = .close
    }
}

class sportCar: SportCar {
    let maxSpeed: Int
    var currentSpeed: Int
    var model: String
    var releaseYear: Int
    var windows: windows
    var engine: engine
    
    init(model: String, releaseYear: Int, maxSpeed: Int) {
        self.maxSpeed = maxSpeed
        self.currentSpeed = 0
        self.model = model
        self.releaseYear = releaseYear
        self.engine = .stop
        self.windows = .close
    }
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "Automobile:\(model)\n" +
        "release year: \(releaseYear)\n" +
        "engine status: \(engine)\n" +
        "windows status: \(windows)\n" +
        "body volume: \(bodyVolume)\n" +
        "cargo volume: \(cargoVolume)\n"
    }
}

extension sportCar: CustomStringConvertible {
    var description: String {
        return "Automobile:\(model)\n" +
        "release year: \(releaseYear)\n" +
        "engine status: \(engine)\n" +
        "windows status: \(windows)\n" +
        "max speed: \(maxSpeed)\n" +
        "current speed: \(currentSpeed)\n"
    }
}

print("\n________________________________________")

var trunkCar1 = trunkCar(model: "Volvo", realeseYear: 1992, bodyVolume: 1900)
var trunkCar2 = trunkCar(model: "Maz", realeseYear: 2021, bodyVolume: 2000)
var trunkCar3 = trunkCar(model: "Chang", realeseYear: 2009, bodyVolume: 3000)

var sportCar1 = sportCar(model: "Porshe", releaseYear: 2002, maxSpeed: 250)
var sportCar2 = sportCar(model: "Lotus", releaseYear: 2012, maxSpeed: 270)
var sportCar3 = sportCar(model: "McLaren", releaseYear: 1987, maxSpeed: 208)

print("\nAction___")

trunkCar1.Engine(status: .start)
trunkCar2.Windows(status: .open)
trunkCar3.PutCargoToBody(volume: 1800)

sportCar1.Engine(status: .start)
sportCar2.IncreaseSpeed(speed: 200)
sportCar3.Windows(status: .open)


print("\n________________________________________")


print(trunkCar1)
print(trunkCar2)
print(trunkCar3)

print(sportCar1)
print(sportCar2)
print(sportCar3)


