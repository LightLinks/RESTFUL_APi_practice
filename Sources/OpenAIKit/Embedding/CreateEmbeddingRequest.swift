import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateEmbeddingRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/embeddings"
    let body: HTTPClient.Body?
    
    init(
        model: String,
        input: String,
        user: String?
    ) throws {
        
        let body = Body(
            model: model,
            input: input,
            user: user
        )
                
        self.body = .data(