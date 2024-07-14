import UIKit

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

let dakeong: Person? = Person(name: "dakeong")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let `guard` = home.guard {
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: dakeong)

func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: dakeong)

dakeong?.home?.guard?.job

dakeong?.home = apart

dakeong?.home

dakeong?.home?.guard

dakeong?.home?.guard = superman

dakeong?.home?.guard

dakeong?.home?.guard?.name
dakeong?.home?.guard?.job

dakeong?.home?.guard?.job = "경비원"

var guardJob: String

guardJob = dakeong?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)

dakeong?.home?.guard?.job = nil

guardJob = dakeong?.home?.guard?.job ?? "슈퍼맨"
print(guardJob)
