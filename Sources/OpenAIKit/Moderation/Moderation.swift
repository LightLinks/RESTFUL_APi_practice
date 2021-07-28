import Foundation

/**
 Moderations
 Given a input text, outputs if the model classifies it as violating OpenAI's content policy.
 */

public struct Moderation {
    public let id: String
    public let model: String
    public let results: [Moderation.Result]
}

extension Moderation {
    public struct Result {
     