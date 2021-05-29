public struct EmbeddingProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create embeddings
     POST
      
     https://api.openai.com/v1/embeddings

     Creates an embedding vector representing the input text.
     */
    public func create(
        model: ModelID = M