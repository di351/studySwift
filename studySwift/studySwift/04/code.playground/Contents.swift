import UIKit

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
