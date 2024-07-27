import UIKit

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    final func sayHello() {
        print("hello")
    }
    
    static func typeMethod() {
        print("type method - static")
    }
    
    class func classMethod() {
        print("type method - class")
    }
    
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Student: Person {
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
}

let dakeong: Person = Person()
let hana: Student = Student()

dakeong.name = "dakeong"
hana.name = "hana"
hana.major = "Swift"

dakeong.selfIntroduce()
hana.selfIntroduce()

Person.classMethod()
Person.typeMethod()
Person.finalClassMethod()

Student.classMethod()
Student.typeMethod()
Student.finalClassMethod()
