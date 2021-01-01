public struct ChatProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create chat completion
     POST
      
     https://api.openai.com/v1