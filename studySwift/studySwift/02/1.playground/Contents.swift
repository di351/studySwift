import UIKit

let age: Int = 18

"안녕하세요 저는 \(age)살입니다"

"안녕하세요 저는 \(age + 5)살입니다"

print("안녕하세요 저는 \(age + 5)살입니다")

print("\n###########\n")

class Person {
    var name: String = "dakeong"
    var age: Int = 10
}

let dakeong: Person = Person()

print(dakeong)

print("\n##############\n")

dump(dakeong)
