import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateImageRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/images/generations"
    let body: HTTPClient.Body?
    
    init(
        prompt: String,
        n: Int,
        size: Image.Size,
        user: String?
    ) throws {
        
 