
import AsyncHTTPClient
import NIO
import NIOHTTP1
import Foundation

public struct Client {
    
    public let models: ModelProvider
    public let completions: CompletionProvider
    public let chats: ChatProvider
    public let edits: EditProvider
    public let images: ImageProvider
    public let embeddings: EmbeddingProvider
    public let files: FileProvider
    public let moderations: ModerationProvider

    public init(
        httpClient: HTTPClient,
        configuration: Configuration
    ) {

        let requestHandler = RequestHandler(
            httpClient: httpClient,
            configuration: configuration
        )
                