public struct ChatProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create chat completion
     POST
      
     https://api.openai.com/v1/chat/completions

     Creates a chat completion for the provided prompt and parameters
     */
    public func create(
        model: ModelID,
        messages: [Chat.Message] = [],
        temperature: Double = 1.0,
        topP: Double = 1.0,
        n: Int = 1,
        stream: Bool = false,
     