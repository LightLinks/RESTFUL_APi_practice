import Foundation

public struct APIError: Error, Decodable {
    public let message: String
  