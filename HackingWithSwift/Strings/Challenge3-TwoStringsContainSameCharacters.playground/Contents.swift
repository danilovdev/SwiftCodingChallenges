/*
 Write a function that accepts two String parameters,
 and returns true if they contain the same characters
 in any order taking into account letter case.
 */

/*
 Using index(of:) is O(n), remove(at:) call is also O(n),
 because it needs to move other elements down in the array
 once the item is removed.
 */
func isSameCharactersA(str1: String, str2: String) -> Bool {
    var str2Copy = str2
    for ch in str1 {
        if let index = str2Copy.index(of: ch) {
            str2Copy.remove(at: index)
        } else {
            return false
        }
    }
    return str2Copy.count == 0
}

assert(isSameCharactersA(str1: "abc", str2: "cba") == true, "failed")
assert(isSameCharactersA(str1: "abc", str2: "abcd") == false, "failed")
assert(isSameCharactersA(str1: "abc", str2: "ABC") == false, "failed")
assert(isSameCharactersA(str1: "a1b2", str2: "ab12") == true, "failed")

func isSameCharactersB(str1: String, str2: String) -> Bool {
    return str1.count == str2.count && str1.sorted() == str2.sorted()
}

assert(isSameCharactersB(str1: "abc", str2: "cba") == true, "failed")
assert(isSameCharactersB(str1: "abc", str2: "abcd") == false, "failed")
assert(isSameCharactersB(str1: "abc", str2: "ABC") == false, "failed")
assert(isSameCharactersB(str1: "a1b2", str2: "ab12") == true, "failed")
