
public struct ModelProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     List models
     GET
      
     https://api.openai.com/v1/models

     Lists the currently available models, and provides basic information about each one such as the owner and availability.
     */