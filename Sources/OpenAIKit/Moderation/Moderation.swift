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
        public let categories: Categories
        public let categoryScores: CategoryScores
        public let flagged: Bool
    }
    
    public enum Mo