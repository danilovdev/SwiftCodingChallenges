/* Challenge 1: Are the letters unique?
Difficulty: Easy
Write a function that accepts a String as its only parameter, and returns true if the string has
only unique letters, taking letter case into account. */

/* First Solution - Brute Force Approach.
 This solution doesn't scale well - calling contains() on an array is an O(n)
 operation, which means it gets slower as more items are added to the array.
 */
func areLettersUniqueUsingArray(str: String) -> Bool {
    var uniqueArray = Array<Character>()
    for ch in str {
        if uniqueArray.contains(ch) {
            return false
        }
        uniqueArray.append(ch)
    }
    return true
}

assert(areLettersUniqueUsingArray(str: "Unique") == true, "failed")
assert(areLettersUniqueUsingArray(str: "abcdABCD") == true, "failed")
assert(areLettersUniqueUsingArray(str: "With duplicates") == false, "failed")
assert(areLettersUniqueUsingArray(str: "Hello, world!") == false, "failed")

/* Second solution - The smart solution.
 Use Set. Sets cannot contain duplicate items, so if we create a set from the
 input string then the count of the set will equal the count of the input’s characters property
 if there are no duplicates.
 */
func areLettersUniqueUsingSet(str: String) -> Bool {
    let uniqueSet = Set<Character>(str)
    let setLength = uniqueSet.count
    let strLength = str.count
    return strLength == setLength
}

assert(areLettersUniqueUsingSet(str: "Unique") == true, "failed")
assert(areLettersUniqueUsingSet(str: "abcdABCD") == true, "failed")
assert(areLettersUniqueUsingSet(str: "With duplicates") == false, "failed")
assert(areLettersUniqueUsingSet(str: "Hello, world!") == false, "failed")






