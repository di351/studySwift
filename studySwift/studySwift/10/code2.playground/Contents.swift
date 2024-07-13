import UIKit

struct Student {
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    @MainActor static var typeDescription: String = "학생"
    
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다"
        }
    }
    
    static var selfIntroduction: String {
        return "학생타입입니다"
    }
}

print(Student.selfIntroduction)

var dakeong: Student = Student()
dakeong.koreanAge = 18
dakeong.name = "dakeong"
print(dakeong.name)
print(dakeong.selfIntroduction)
print("제 한국나이는 \(dakeong.koreanAge)살이고, 미국나이는 \(dakeong.westernAge)살입니다.")

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000.0
print(moneyInMyPocket.won)
moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}
print(sum)

struct MoneyAgain {
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다")
        }
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다")
        }
    }
    
    var dollar: Double = 0 {
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다")
        }
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다")
        }
    }
    
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocketAgain: MoneyAgain = MoneyAgain()
moneyInMyPocketAgain.currencyRate = 1150
moneyInMyPocketAgain.dollar = 10
print(moneyInMyPocketAgain.won)

var c: Int = 100 {
    willSet {
        print("\(c)에서 \(newValue)로 변경될 예정입니다")
    }
    didSet {
        print("\(oldValue)에서 \(c)로 변경되었습니다")
    }
}

c = 200
