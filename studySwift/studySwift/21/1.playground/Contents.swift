import UIKit

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)
print(2.isEven)
print(1.isOdd)
print(2.isOdd)

var number: Int = 3
print(number.isEven)
print(number.isOdd)

number = 2
print(number.isEven)
print(number.isOdd)

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}

print(3.multiply(by: 2))
print(4.multiply(by: 5))

number = 3
print(number.multiply(by: 2))
print(number.multiply(by: 3))

extension String {
    init(int: Int) {
        self = "\(int)"
    }
    
    init(double: Double) {
        self = "\(double)"
    }
}

let stringFromInt: String = String(int: 100)
let stringFromDouble: String = String(double: 100.0)
