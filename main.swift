import Foundation

var array = [13, 123, 4, -4, 40, 50, 67 ,42]

array.sort(by: { a, b in a < b })
print(array)

array.sort(by: { a, b in a > b })
print(array) 

print("--------")

func makeFriends(names: String...) -> [String] {
    var friends = [String]()
    for name in names {
        friends.append(name)
    }
    return friends
}

var friends = makeFriends(names: "Mikle", "Nick", "Kendall", "Marsia", "John", "Ted", "Chris")
friends.sort(by: { a, b in a.count < b.count })
print(friends)

print("--------")

var friendsNamesLengths = [Int: String]()
for friend in friends {
    friendsNamesLengths[friend.count] = friend
}
print(friendsNamesLengths) 

func printName(key: Int) {
    if let name = friendsNamesLengths[key] {
        print("NameLength: \(key), Friend: \(name)")
    } else {
        print("There is no friend's name with length ", key)
    }
}
for i in (1..<9) {
    printName(key: i)
}

print("--------")

func fillEmptyArrays(strings: [String], numbers: [Int]) {
    print("Strings array before: \(strings)")
    var strings = strings
    if strings.isEmpty {
        strings.append("kek")
    }
    print("Strings array after: \(strings)")
    
    print("Numbers array before: \(numbers)")
    var numbers = numbers
    if numbers.isEmpty {
        numbers.append(13)
    }
    print("Numbers array after: \(numbers)")
}
fillEmptyArrays(strings: [], numbers: [1, 3]) 
fillEmptyArrays(strings: ["Lol", "Kek", "Lmao"], numbers: []) 

