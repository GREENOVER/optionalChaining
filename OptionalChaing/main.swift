import Foundation

class Camper {
    var nickName: String
    var description: Description?
    
    init(nickName: String) {
        self.nickName = nickName
    }
}

struct Description {
    var gender: Gender?
    var age: Int
}

class Gender {
    var gender: String
    
    init(gender: String) {
        self.gender = gender
    }
}

let green: Camper = Camper(nickName: "green")

let greenGender: String? = green.description?.gender?.gender
print(greenGender)

if let greenGender: String = green.description?.gender?.gender {
    print(greenGender)
    } else {
        print("Not Found")
}

green.description?.gender?.gender = "Male"
print(green.description?.gender?.gender)

green.description = Description(gender: nil, age: 77)
green.description?.gender = Gender(gender: "Male")

print(green.description?.gender?.gender)
