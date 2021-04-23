import NIOHTTP1

public struct Configuration {
    public let apiKey: String
    public let organization: String?
    
    var headers: HTTPHeaders {
        var headers = HTTPHeaders()
        headers.add(name: "Authorization", value: "Bearer \(apiKey)")

        if let organization = organ