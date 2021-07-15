import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateImageRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/images/generations"
    let body: HTTPClie