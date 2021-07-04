import NIOHTTP1
import Foundation

struct DeleteFileRequest: Request {
    let method: HTTPMethod = .DELETE
    let path: String
    
    