import UIKit

var integers = [1, 2, 3]
let people = ["dakeong": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

for (name, age) in people {
    print("\(name): \(age)")
}

while integers.count > 1 {
    integers.removeLast()
}

repeat {
    integers.removeLast()
} while integers.count > 0

