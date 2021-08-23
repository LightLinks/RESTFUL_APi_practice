import Foundation

public struct Usage {
    public let promptTokens: Int
    public let completionTokens: Int
    public let totalTokens: Int
}

extension Usage: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKe