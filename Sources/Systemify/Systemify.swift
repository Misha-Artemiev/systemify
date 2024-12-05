// The Swift Programming Language
// https://docs.swift.org/swift-book

public func CLIInput<T>(_ type: T.Type) -> T {
    let input = readLine()
    switch type.self {
    case is Int.Type, is Int?.Type:
        guard let toReturn: T = Int(input!) as? T else { return 0 as! T}
        return toReturn
    case is String.Type, is String?.Type:
        guard let toReturn: T = input as? T else { return "" as! T}
        return toReturn
    case is Double.Type, is Double?.Type:
        guard let toReturn: T = Double(input!) as? T else { return 0 as! T}
        return toReturn
    case is Float.Type, is Float?.Type:
        guard let toReturn: T = Float(input!) as? T else { return 0 as! T}
        return toReturn
    case is Bool.Type, is Bool?.Type:
        guard let toReturn: T = Bool(input!.lowercased()) as? T else { return false as! T}
        return toReturn
    case is Array<Any>.Type, is Array<Any>?.Type:
        guard let toReturn: T = Array(input!) as? T else { return Array<Any>() as! T}
        return toReturn
    default:
        return "as" as! T
    }
}
