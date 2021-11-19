import UIKit

enum Transmission {

     case manual, automatic
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




//func engineKeyTurn (action : EngineStatus) {
//    switch action {
//    case .on :
//        print("Key was turned and Engine on")
//        self.engineStatus = .on
//    case .off:
//        print("Key was turned and Engine off")
//        self.engineStatus = .off       }
//}
//func windowButtonPushed (action : WindowsPosition) {
//    switch action {
//    case .open :
//        print("windows was open")
//        self.windowsPosition = .open
//    case .close:
//        print("windows was close")
//        self.windowsPosition = .close       }
//}

 class Car {
     let brand : String
     let yersOfIssued : Int
     var engine : EngineStatus = .off
     var windows : WindowsPosition = .close

     enum EngineStatus : CustomStringConvertible {
         case on, off
         
         var description: String {
             switch self {
             case .on :
                 return "engine was start"
             case .off :
                 return "engine was stop"
             }
         }
     }
     enum WindowsPosition : CustomStringConvertible {
         
         var description: String {
             switch self {
             case .open :
                 return "windows was open"
             case .close :
                 return "windows was close"
             }
         }
         case open, close
     }
     enum TruckBodyClass : CustomStringConvertible {
         
         case refrigirator, trunk
         
         var description: String {
             switch self {
             case .refrigirator :
                 return "frozen type"
             case .trunk :
                 return "common tupe"
             }
         }
         
     }
     enum TrunkLoadingAction {

         case loadAFullTrunk
         case loadAHalfTrunk
         case unLoadAFullTrunk
         case unLoadAHalfTrunk
     }

     init(brand: String, yersOfIssued: Int) {
         self.brand =  brand
         self.yersOfIssued = yersOfIssued
         
     }
     func perform(action: TrunkLoadingAction){
     }
}

class TrunkCar: Car, CustomStringConvertible {
    static var typeTires = "TruckTires"
    let maxLoadValue: Double
    var currentLoadValue : Double = 0
    var body: TruckBodyClass?
    
    var description: String {
        let bodyDescription = body?.description ?? "Disconnected"
        
        return "\(TrunkCar.typeTires) \(brand)\nYear of issued :\(yersOfIssued)\nBody : \(bodyDescription)\(currentLoadValue)/\(maxLoadValue)\n Status is \(engine) | \(windows)\n"
    }
    
    init (brand: String, yearOfIssued: Int, maxLoadValue: Double, body:TruckBodyClass?) {
        self.body = body
        self.maxLoadValue = maxLoadValue
        super.init(brand: brand, yersOfIssued: yearOfIssued)
    }
}
