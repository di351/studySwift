import UIKit

struct Sample {
    var mutableProperty: Int = 100
    
    let immutableProperty: Int = 100
    
    @MainActor static var typeProperty: Int = 100
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}

var mutable: Sample = Sample()

//mutable.immutableProperty = 200

let immutable: Sample = Sample()

//immutable.immutableProperty = 200


Sample.typeProperty = 300
Sample.typeMethod()

//mutable.typeProperty = 400
//mutable.typeMethod()

struct Student {
    var name: String = "unknown"
    
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
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

jina.selfIntroduce()
