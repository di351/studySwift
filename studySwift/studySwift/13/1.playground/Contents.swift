import UIKit

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult)

var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum(1, 2)
print(sumResult)

sum = sumFunction(a:b:)
sumResult = sum(1, 2)
print(sumResult)

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
print(calculated)

calculated = calculate(a: 50, b: 10, method: substract)
print(calculated)

calculated = calculate(a: 50, b: 10, method: divide)
print(calculated)

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calculated)

var result: Int

result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}
print(result)

result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})
print(result)

result = calculate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}
print(result)

result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})
print(result)

result = calculate(a: 10, b: 10) {
    return $0 + $1
}
print(result)

result = calculate(a: 10, b: 10) {
    $0 + $1
}
print(result)

result = calculate(a: 10, b: 10) { $0 + $1 }
print(result)

result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

result = calculate(a: 10, b: 10) { $0 + $1 }
print(result)
