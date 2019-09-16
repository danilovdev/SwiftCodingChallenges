/* Challenge 1: Are the letters unique?
Difficulty: Easy
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account. */

/* First Solution - Brute Force Approach.
 This solution doesn't scale well - calling contains() on an array is an O(n)
 operation, which means it gets slower as more items are added to the array.
 */
func challenge1a(str: String) -> Bool {
    var uniqueArray = Array<Character>()
    for ch in str {
        if uniqueArray.contains(ch) {
            return false
        }
        uniqueArray.append(ch)
    }
    return true
}

assert(challenge1a(str: "Unique") == true, "failed")
assert(challenge1a(str: "abcdABCD") == true, "failed")
assert(challenge1a(str: "With duplicates") == false, "failed")
assert(challenge1a(str: "Hello, world!") == false, "failed")

/* Second solution - The smart solution.
 Use Set. Sets cannot contain duplicate items, so if we create a set from the
 input string then the count of the set will equal the count of the input’s characters property
 if there are no duplicates.
 */
func challenge1b(str: String) -> Bool {
    let uniqueSet = Set<Character>(str)
    let setLength = uniqueSet.count
    let strLength = str.count
    return strLength == setLength
}

assert(challenge1b(str: "Unique") == true, "failed")
assert(challenge1b(str: "abcdABCD") == true, "failed")
assert(challenge1b(str: "With duplicates") == false, "failed")
assert(challenge1b(str: "Hello, world!") == false, "failed")

// Third solution
func challenge1c(input: String) -> Bool {
    var table: [Character: Int] = [:]
    for ch in input {
        if table[ch] == nil {
            table[ch] = 1
        } else {
            return false
        }
    }
    return true
}

assert(challenge1c(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1c(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1c(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1c(input: "Hello, world") == false, "Challenge 1 failed")







