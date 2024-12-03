// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct CLIInput {
    private var input: String? {readLine()}
    public func string() -> String? {
        return input
    }
    public func int() -> Int? {
        guard (input != nil) else {return nil}
        return Int(input!)
    }
    public func double() -> Double? {
        guard (input != nil) else {return nil}
        return Double(input!)
    }
    public func float() -> Float? {
        guard (input != nil) else {return nil}
        return Float(input!)
    }
    public func bool() -> Bool? {
        guard (input != nil) else {return nil}
        return Bool(input!)
    }
}
