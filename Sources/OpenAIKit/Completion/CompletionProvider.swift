public struct CompletionProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create completion
     POST
      
     https://api.openai.com/v1/completions

     Creates a completion for the provided prompt and para