import UIKit

protocol Talkable {
    var topic: String { get set }
    var language: String { get }
    func talk()
    init(topic: String, language: String)
}

struct Person: Talkable {
    var topic: String
    let language: String
    
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}

protocol Readable {
    func read()
}
protocol Writeable {
    func write()
}
protocol ReadSpeakable: Readable {
    func speak()
}
protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

struct SomeType: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}

class SuperClass: Readable {
    func read() { }
}

class SubClass: SuperClass, Writeable, ReadSpeakable {
    func write() { }
    func speak() { }
}

let sup: SuperClass = SuperClass()
let sub: SubClass = SubClass()

var someAny: Any = sup
someAny is Readable
someAny is ReadSpeakable

someAny = sub

someAny is Readable
someAny is ReadSpeakable

someAny = sup

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
}

if let someReadSpeakable: ReadSpeakable = someAny as? ReadSpeakable {
    someReadSpeakable.speak()
}

someAny = sub

if let someReadable: Readable = someAny as? Readable {
    someReadable.read()
}
