import Foundation

/// 1. Basic implementation

func rollADice() -> Int {
    return Int(arc4random_uniform(UInt32(5)))
}


func mul(_ a: Int) -> Int {
    return a * rollADice()
}


func div(_ a: Int) -> Int {
    return a / rollADice()
}


func add(_ a: Int) -> Int {
    return a + rollADice()
}


public func madadam_basic(_ x: Int) -> Int {
    let m       = mul(x)
    let ma      = add(m)
    let mad     = div(ma)
    let mada    = add(mad)
    let madad   = div(mada)
    let madada  = add(madad)
    let madadam = mul(madada)
    return madadam
}
