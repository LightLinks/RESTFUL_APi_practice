import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateImageVariationRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/images/variations"
    let body: HTTPClient.Body?
    private let boundary = UUID().uuidString
    
    var headers: HTTPHeaders {
        var headers = HTTPHeaders()
        headers.add(name: "Content-Type", value: "multipart/form-data; boundary=\(boundary)")
        return headers
    }
    
    init(
        image: Data,
        n: Int,
        size: Image.Size,
        user: String?
    ) throws {
        
        let bu