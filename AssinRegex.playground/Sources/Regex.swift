import Foundation

public func regex(title: String, text: String, pattern: String) {

    let range = NSRange(location: 0, length: text.count)

    let regex = try! NSRegularExpression(pattern: pattern)

    let result = regex.matches(in: text, options: [], range: range)

    var printResult = ""
    result.forEach {
        let matchText = NSString(string: text).substring(with: $0.range)
        printResult += "\($0.range) \(matchText)\n"
    }
    print("\"\(title)\" Regex '\(pattern)' to '\(text)'\n \(printResult)")
}
public func substitution(title: String, text: String, pattern: String, template: String) {

    let range = NSRange(location: 0, length: text.count)

    let regex = try! NSRegularExpression(pattern: pattern)
    
    let result = regex.stringByReplacingMatches(in: text, options: [], range: range, withTemplate: template)
    
    print("\"\(title)\" Regex '\(pattern)' to '\(text)'\n\(result)")
}
