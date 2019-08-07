/* task 7
 Write a function that returns a string with any consecutive spaces replaced with a single space.
 */

import Foundation

/*
 You might have written a loop over the characters in the input string. If the current
 letter was a space and you had already seen one in this run, continue to the next letter.
 Otherwise, mark that you’ve seen a space. If it wasn’t a space, clear the space flag.
 Regardless of whether it was the first space or a letter, append it to an output string.
 */

func condenseWhitespaceA(str: String) -> String {
    var seenSpace = false
    var result = ""
    for ch in str {
        if ch == " " {
            if seenSpace { continue }
            seenSpace = true
        } else {
            seenSpace = false
        }
        result.append(ch)
    }
    return result
}

assert(condenseWhitespaceA(str: "a   b   c") == "a b c", "failed")
assert(condenseWhitespaceA(str: "    a") == " a", "failed")
assert(condenseWhitespaceA(str: "abc") == "abc", "failed")

/*
 “[space]+” means “match one or more spaces”,
 so that will cause all multiple spaces to be replaced with a single space.
 */
func condenseWhitespaceB(str: String) -> String {
    return str.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

assert(condenseWhitespaceB(str: "a   b   c") == "a b c", "failed")
assert(condenseWhitespaceB(str: "    a") == " a", "failed")
assert(condenseWhitespaceB(str: "abc") == "abc", "failed")


