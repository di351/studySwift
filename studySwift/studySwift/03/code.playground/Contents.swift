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


var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet)
print(integerSet.contains(1))
print(integerSet.contains(2))

integerSet.remove(100)
integerSet.removeFirst()

print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
print(union)

let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)
