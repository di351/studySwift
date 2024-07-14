import UIKit

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

implicitlyUnwrappedOptionalValue = nil


var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

optionalValue = nil
