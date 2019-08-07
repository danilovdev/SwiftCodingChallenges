/*
 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 */

import Foundation

/*
 Brute Force Solution.
 */

func countCharactersA(_ string: String, _ ch: Character) -> Int {
    var count = 0
    for letter in string {
        if letter == ch {
            count += 1
        }
    }
    return count
}

assert(countCharactersA("The rain in Spain", "a") == 2, "failed")
assert(countCharactersA("Mississippi", "i") == 4, "failed")
assert(countCharactersA("Hacking with Swift", "i") == 3, "failed")

/*
 The second option is to solve this problem functionally using reduce().
 */

func countCharactersB(_ string: String, _ ch: Character) -> Int {
    return string.reduce(0) {
        $1 == ch ? $0 + 1 : $0
    }
}

assert(countCharactersB("The rain in Spain", "a") == 2, "failed")
assert(countCharactersB("Mississippi", "i") == 4, "failed")
assert(countCharactersB("Hacking with Swift", "i") == 3, "failed")

/*
 A third solution is to use NSCountedSet.
 */

func countCharactersС(_ string: String, _ ch: String) -> Int {
    let arrayOfStrings = string.map { String($0) }
    let countedSet = NSCountedSet(array: arrayOfStrings)
    return countedSet.count(for: ch)
}

assert(countCharactersС("The rain in Spain", "a") == 2, "failed")
assert(countCharactersС("Mississippi", "i") == 4, "failed")
assert(countCharactersС("Hacking with Swift", "i") == 3, "failed")

/*
 A fourth solution. You can calculate how many times a letter appears in a string
 by removing it, then comparing the lengths of the original and modified strings.
 */

func countCharactersD(_ string: String, _ ch: String) -> Int {
    let modified = string.replacingOccurrences(of: ch, with: "")
    return string.count - modified.count
}

assert(countCharactersD("The rain in Spain", "a") == 2, "failed")
assert(countCharactersD("Mississippi", "i") == 4, "failed")
assert(countCharactersD("Hacking with Swift", "i") == 3, "failed")



