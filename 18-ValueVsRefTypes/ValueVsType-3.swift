import Foundation.NSDate


class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"  // changes underlying object pointed to by both
print(anotherHecate.name)              // => AnotherHecate
print(hecate.name)                     // => AnotherHecate


// Value type
struct Pantheon {
    // var chiefGod: GreekGod
    let chiefGod: GreekGod
    let dateCreated = NSDate()      // immutable Reference type
}

let pantheon = Pantheon(chiefGod: hecate)
let greekPantheon = pantheon
print(greekPantheon.chiefGod.name)
print(greekPantheon.dateCreated)

let zeus = GreekGod(name: "Zeus")
let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"

print("gods:")
for god in gods {
    print(god.name)
}

print("godsCopy:")
for god in godsCopy {
    print(god.name)
}



