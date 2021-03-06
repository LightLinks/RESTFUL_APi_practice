import AsyncHTTPClient
import NIOHTTP1
import Foundation

struct CreateCompletionRequest: Request {
    let method: HTTPMethod = .POST
    let path = "/v1/completions"
    let body: HTTPClient.Body?
    
    init(
        model: String,
        prompts: [String],
        suffix: String?,
        maxTokens: Int,
        temperature: Double,
        topP: Double,
        n: Int,
        stream: Bool,
        logprobs: Int?,
        echo: Bool,
        stops: [String],
        presencePenalty: Double,
        frequencyPenalty: Double,
        bestOf: Int,
        logitBias: [String: Int],
        user: String?
    ) throws {
        
        let body = Body(
            model: model,
            prompts: prompts,
            suffix: suffix,
            maxTokens: 