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
            maxTokens: maxTokens,
            temperature: temperature,
            topP: topP,
            n: n,
            stream: stream,
            logprobs: logprobs,
            echo: echo,
            stops: stops,
            presencePenalty: presencePenalty,
            frequencyPenalty: frequencyPenalty,
            bestOf: bestOf,
            logitBias: logitBias,
            user: user
        )
                
        self.body = .data(try Self.encoder.encode(body))
    }
}

extension CreateCompletionRequest {
    struct Body: Encodable {
        let model: String
        let prompts: [String]
        let suffix: String?
        let maxTokens: Int
        let temperature: Double
        let topP: Double
        let n: Int
        let 