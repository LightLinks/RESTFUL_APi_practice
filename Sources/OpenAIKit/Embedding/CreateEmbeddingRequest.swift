import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateEmbeddingRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/embeddin