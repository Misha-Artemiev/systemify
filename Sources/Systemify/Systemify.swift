// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct CLIInput_old {
    private var input: String? {readLine()}
    public func string() -> String? {
        return input
    }
    public func toInt() -> Int? {
        guard (input != nil) else {return nil}
        return Int(input!)
    }
    
    public func toDouble() -> Double? {
        guard (input != nil) else {return nil}
        return Double(input!)
    }
    public func toFloat() -> Float? {
        guard (input != nil) else {return nil}
        return Float(input!)
    }
    public func toBool() -> Bool? {
        guard (input != nil) else {return nil}
        return Bool(input!)
    }
    public func toEnum<T: CaseIterable & Hashable>(_ enumType: T.Type) -> T? {
        return enumType.allCases.first { "\(String(describing: $0))" == input }
    }
}

public func CLIInput<T>(_ type: T.Type) -> T {
    var input = readLine() ?? ""
    switch type.self {
    case is Int.Type:
        return Int(input) as! T
    case is Double.Type:
        return "as" as! T
    case is Float.Type:
        return "as" as! T
    case is Bool.Type:
        return "as" as! T
    default:
        return "as" as! T
    }
}
