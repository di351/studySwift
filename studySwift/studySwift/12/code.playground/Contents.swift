import UIKit

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")
print("second struct instance property : \(secondStructInstance.property)")

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")
print("second class reference property : \(secondClassReference.property)")
