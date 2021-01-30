public struct CompletionProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
 