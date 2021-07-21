import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateImageVariationRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/images/variations"
    let body: HTTPClient.Body?
    private let boundary = UUID().uui