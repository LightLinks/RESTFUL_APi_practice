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

     Upload a file that contains document(s) to be used across various endpoints/features. Currently, the size of all the files uploaded by one organization can be up to 1 GB. Please contact us if you need to increase the storage limit.
     */
    public func upload(
        file: Data,
        fileName: String = "data.jsonl",
        purpose: File.Purpose
    ) async throws -> File {
        
        let request = try UploadFileRequest(
            file: file,
            fileName: fileName,
            purpose: pu