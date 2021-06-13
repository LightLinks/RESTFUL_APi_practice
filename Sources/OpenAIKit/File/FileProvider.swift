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
        let request = ListFilesReques