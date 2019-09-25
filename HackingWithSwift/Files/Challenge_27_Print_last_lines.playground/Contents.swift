/* Challenge 27: Print last lines
 Difficulty: Easy
 Write a function that accepts a filename on disk, then prints its last N lines in reverse order,
 all on a single line separated by commas.
 Sample input and output
 Here is your test input file:
    Antony And Cleopatra
    Coriolanus
    Cymbeline
    Hamlet
    Julius Caesar
    King Lear
    Macbeth
    Othello
    Twelfth Night
 
• If asked to print the last 3 lines, your code should output “Twelfth Night, Othello, Macbeth”.
• If asked to print the last 100 lines, your code should output “Twelfth Night, Othello,
 Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra”.
• If asked to print the last 0 lines, your could should print nothing.
 */

import Foundation

func challenge27(fileName: String, numberOfLines: Int) {
    guard let fileUrl = Bundle.main.url(forResource: "Input", withExtension: "txt"),
        let content = try? String(contentsOf: fileUrl) else {
            return
    }
    
    var lines = content.components(separatedBy: "\n")
    lines = lines.filter { !$0.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty }
    guard lines.count > 0 else { return }
    lines.reverse()
    
    var array: [String] = []
    for i in 0..<min(lines.count, numberOfLines) {
        array.append(lines[i])
    }
    
    let result = array.joined(separator: ", ")
    print(result)
}

challenge27(fileName: "Input", numberOfLines: 5)
