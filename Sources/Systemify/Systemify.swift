import Foundation

public enum CLIInputKind<T> {
    case type
}

// Provide discoverable typed options:
extension CLIInputKind where T == Int {
    static var int: CLIInputKind<Int> { .type }
}

extension CLIInputKind where T == Int? {
    static var optionalInt: CLIInputKind<Int?> { .type }
}

extension CLIInputKind where T == String {
    static var string: CLIInputKind<String> { .type }
}

extension CLIInputKind where T == String? {
    static var optionalString: CLIInputKind<String?> { .type }
}

extension CLIInputKind where T == Character {
    static var character: CLIInputKind<Character> { .type }
}

extension CLIInputKind where T == Character? {
    static var optionalCharacter: CLIInputKind<Character?> { .type }
}

extension CLIInputKind where T == Double {
    static var double: CLIInputKind<Double> { .type }
}

extension CLIInputKind where T == Double? {
    static var optionalDouble: CLIInputKind<Double?> { .type }
}

extension CLIInputKind where T == Float {
    static var float: CLIInputKind<Float> { .type }
}

extension CLIInputKind where T == Float? {
    static var optionalFloat: CLIInputKind<Float?> { .type }
}

extension CLIInputKind where T == Bool {
    static var bool: CLIInputKind<Bool> { .type }
}

extension CLIInputKind where T == Bool? {
    static var optionalBool: CLIInputKind<Bool?> { .type }
}

public func CLIInput<T>(_ type: CLIInputKind<T>) -> T {
    let input = readLine()
    switch type {
    case .type where T.self == Int.self, .type where T.self == Optional<Int>.self:
        guard let toReturn: T = Int(input!) as? T else { return 0 as! T}
        return toReturn
    case .type where T.self == String.self, .type where T.self == String?.self:
        guard let toReturn: T = input as? T else { return "" as! T}
        return toReturn
    case .type where T.self == Character.self, .type where T.self == Character?.self:
        guard let toReturn: T = Character(input!) as? T else { return "" as! T}
        return toReturn
    case .type where T.self == Double.self, .type where T.self == Double?.self:
        guard let toReturn: T = Double(input!) as? T else { return Double(0) as! T}
        return toReturn
    case .type where T.self == Float.self, .type where T.self == Float?.self:
        guard let toReturn: T = Float(input!) as? T else { return Float(0) as! T}
        return toReturn
    case .type where T.self == Bool.self, .type where T.self == Bool?.self:
        guard let toReturn: T = Bool(input!.lowercased()) as? T else { return false as! T}
        return toReturn
    default:
        return "" as! T
    }
}
