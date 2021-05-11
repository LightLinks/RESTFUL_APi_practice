public struct EditProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     Create edit
     POST
      
     https://api.openai.com/v1/edits

     Creates a new edit for the provided input, instruction, and parameters
     */
    public func create(
        model: ModelID = Model.GPT3.textDavinciEdit001,
        input: String = "",
        instruction: String,
        n: Int = 1,
        temper