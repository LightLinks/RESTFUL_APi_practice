import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateCompletionRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/completions"
   