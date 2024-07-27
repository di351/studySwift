import UIKit

class Sample {
    var mutableProperty: Int = 100
    
    let immutableProperty: Int = 100
    
    @MainActor static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method - static")
    }
    
    class func classMethod() {
        print("type method - class")
    }
}


var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200

//immutableReference = mutableReference

//immutableReference.immutableProperty = 200


Sample.typeProperty = 300
Sample.typeMethod()


class Student {
    var name: String = "unknown"
    
    var `class`: String = "Swift"

    class func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce()

var dakeong: Student = Student()
dakeong.name = "dakeong"
dakeong.class = "스위프트"
dakeong.selfIntroduce()

let jina: Student = Student()
jina.name = "jina"
jina.selfIntroduce()
