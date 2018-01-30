/* Task 9. Find pangrams
Write a function that returns true if it is given a string that is an English pangram,
 ignoring letter case. A pangram is a string that contains every letter of
 the alphabet at least once.
 */

/*
 Swift’s characters conform to Comparable, so you can compare them against “a” and “z”
 directly to ensure they are alphabetical. Once you know how to ensure a letter is alphabetical,
 all that remains is removing duplicates (easy using a set) and collapsing case (lowercased()
 is fine), then comparing the count of the result against 26.
 */

func isStringPangram(str: String) -> Bool {
    let set = Set(str.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

assert(isStringPangram(str: "The quick brown fox jumps over the lazy dog") == true, "failed")
assert(isStringPangram(str: "The quick brown fox jumped over the lazy dog") == false, "failed")
