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
    
    public enum Model: String, Codable {
        case latest = "text-moderation-latest"
        case stable = "text-moderation-stable"
    }
}

extension Moderation.Result {
    public struct Categories {
        public let hate: Bool
        public let hateThreatening: Bool
        public let selfHarm: Bool
        public let sexual: Bool
        public let sexualMinors: Bool
        public let violence: Bool
        public let violenceGraphic: Bool
    }
    
    public struct CategoryScores {
        public let hate: Float
        public let hateThreatening: Float
    