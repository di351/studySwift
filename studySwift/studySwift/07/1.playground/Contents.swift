import UIKit

func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

func maximumIntegerValue() -> Int {
    return Int.max
}

func greeting(friend: String, me: String = "dakeong") {
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "hana")
greeting(friend: "john", me: "eric")


func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

greeting(to: "hana", from: "dakeong")


func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "dakeong", friends: "hana", "eric", "wing"))

print(sayHelloToFriends(me: "dakeong"))

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "dakeong")

someFunction = greeting(friend:me:)
someFunction("eric", "dakeong")

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFunction)
