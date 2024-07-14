import UIKit

var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)

print(integers)

print(integers.contains(100))
print(integers.contains(99))

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

print(integers.count)

var doubles: Array<Double> = [Double]()

var strings: [String] = [String]()

var characters: [Character] = []

let immutableArray = [1, 2, 3]

var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

let emptyDictionary: [String: String] = [:]

let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]
