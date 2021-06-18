import Foundation

public struct FileProvider {
    
    private let requestHandler: RequestHandler
    
    init(requestHandler: RequestHandler) {
        self.requestHandler = requestHandler
    }
    
    /**
     List files
     GET
      
     https://api.openai.com/v1/files

     Returns a list of files that belong to the user's organization.
     */
    public func list() async throws -> [File] {
        let request = ListFilesRequest()
        
        let response: ListFilesResponse = try await requestHandler.perform(request: request)
        
        return response.data
    }
    
    /**
     Upload file
     POST
      
     https://api.openai.com/v1/files

     Upload a file that contains document(s) to be used across vario