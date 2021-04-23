import NIOHTTP1

public struct Configuration {
    public let apiKey: String
    public let organization: String?
    
    var headers: HTTPHeaders {
        var 