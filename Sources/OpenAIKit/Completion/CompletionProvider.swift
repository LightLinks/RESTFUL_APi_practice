public struct CompletionProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create completion
     POST
      
     https://api.openai.com/v1/completions

     Creates a completion for the provided prompt and parameters
     */
    public func create(
        model: ModelID,
        prompts: [String] = [],
        suffix: String? = nil,
        maxTokens: Int = 16,
        temperature: Double = 1.0,
        topP: Double = 1.0,
        n: Int = 1,
        stream: Bool = false,
        logprobs: Int? = nil,
        echo: Bool = f