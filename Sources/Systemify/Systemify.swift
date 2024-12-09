import Foundation

public enum CLIInputKind<T> {
    case int
    case optionalInt
    case string
    case optionalString
    case character
    case optionalCharacter
    case double
    case optionalDouble
    case float
    case optionalFloat
    case bool
    case optionalBool
}


public func CLIInput<T>(_ type: CLIInputKind<T>) -> T {
    let input = readLine()
    switch type {
    case .int, .optionalInt:
        guard let toReturn: T = Int(input!) as? T else { return 0 as! T}
        return toReturn
    case .string, .optionalString:
        guard let toReturn: T = input as? T else { return "" as! T}
        return toReturn
    case .character, .optionalCharacter:
        guard let toReturn: T = Character(input!) as? T else { return "" as! T}
        return toReturn
    case .double, .optionalDouble:
        guard let toReturn: T = Double(input!) as? T else { return Double(0) as! T}
        return toReturn
    case .float, .optionalFloat:
        guard let toReturn: T = Float(input!) as? T else { return Float(0) as! T}
        return toReturn
    case .bool, .optionalBool:
        guard let toReturn: T = Bool(input!.lowercased()) as? T else { return false as! T}
        return toReturn
    }
}
