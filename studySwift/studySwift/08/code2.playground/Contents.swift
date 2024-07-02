import UIKit

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

myName = "dakeong"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

yourName = "hana"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

printName(myName!)

myName = nil

yourName = nil
