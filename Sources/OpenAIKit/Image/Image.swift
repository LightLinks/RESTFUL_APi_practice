import Foundation

public struct Image {
    public let url: String
}

extension Image: Decodable {}

extension Image {
    public enum Size: String {
        case twoFiftySix = "256x256"
        case fiveTw