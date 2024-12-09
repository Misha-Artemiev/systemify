import Foundation

public enum CLIInputTypes<T> {
    case int
    case intOptional
    case string
    case stringOptional
    case double
    case doubleOptional
    case float
    case floatOptional
    case bool
    case boolOptional
}

public func CLIInput<T>(_ type: CLIInputTypes<T>) -> T {
    let input = readLine()
    switch type {
    case .int, .intOptional:
        guard let toReturn: T = Int(input!) as? T else { return 0 as! T}
        return toReturn
    case .string, .stringOptional:
        guard let toReturn: T = input as? T else { return "" as! T}
        return toReturn
    case .double, .doubleOptional:
        guard let toReturn: T = Double(input!) as? T else { return Double(0) as! T}
        return toReturn
    case .float, .floatOptional:
        guard let toReturn: T = Float(input!) as? T else { return Float(0) as! T}
        return toReturn
    case .bool, .boolOptional:
        guard let toReturn: T = Bool(input!.lowercased()) as? T else { return false as! T}
        return toReturn
    }
}
