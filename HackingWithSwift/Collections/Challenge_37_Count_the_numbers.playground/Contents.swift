import Foundation

/*
Challenge 37: Count the numbers
Difficulty: Easy
Write an extension for collections of integers that returns the number of times a specific
digit appears in any of its numbers.
*/

extension Collection where Element == Int {
    
    func challenge37(count: Character) -> Int {
        var total = 0
        for item in self {
            let strNum = String(item)
            for ch in strNum {
                if ch == count {
                    total += 1
                }
            }
        }
        return total
    }
    
    func challenge37a(count: Character) -> Int {
        return reduce(0) {
            $0 + String($1).filter { $0 == count }.count
        }
    }
}

assert([5, 15, 55, 515].challenge37(count: "5") == 6, "Failed")
assert([5, 15, 55, 515].challenge37(count: "1") == 2, "Failed")
assert([55555].challenge37(count: "5") == 5, "Failed")
assert([55555].challenge37(count: "1") == 0, "Failed")

assert([5, 15, 55, 515].challenge37a(count: "5") == 6, "Failed")
assert([5, 15, 55, 515].challenge37a(count: "1") == 2, "Failed")
assert([55555].challenge37a(count: "5") == 5, "Failed")
assert([55555].challenge37a(count: "1") == 0, "Failed")


