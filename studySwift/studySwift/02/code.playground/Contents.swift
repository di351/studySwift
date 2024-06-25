import UIKit

var someBool: Bool = true
someBool = false

var someInt: Int = -100

var someUInt: UInt = 100

var someFloat: Float = 3.14
someFloat = 3

var someDouble: Double = 3.14
someDouble = 3

var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"

print(someCharacter)

var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

someString = """
여러줄 문자열을
사용할 수 있다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 된다.
"""

someString = """
겹따옴표 세 개인 줄(첫줄, 끝줄)에서
줄 바꿈을 하지 않으면 오류가 발생한다.
"""

var someAny: Any = 100
someAny = "어떤 타입도 수용 가능하다"
someAny = 123.12

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

someAny = nil
someAnyObject = nil


