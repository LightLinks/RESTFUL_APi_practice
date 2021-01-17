import Foundation

/**
 Given a prompt, the model will return one or more predicted completions, and can also return the probabilities of alternative tokens at each position.
 */
public struct Completion {
    public let id: String
    public let object: String
    public 