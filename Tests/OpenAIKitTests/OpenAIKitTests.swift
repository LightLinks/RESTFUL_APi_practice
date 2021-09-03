import XCTest
import AsyncHTTPClient
@testable import OpenAIKit

final class OpenAIKitTests: XCTestCase {
    
    private var httpClient: HTTPClient!
    private var client: Client!
    
    override func setUp() {
        httpClient = HTTPClient(eventLoopGroupProvider: .createNew)
        
        let configuration = Configuration(apiKey: "YOUR-API-KEY")
        
        client = Client(
            httpClient: httpClient,
            configuration: configuration
        )
    }
    
    override func tearDown() async throws {
        try await httpClient.shutdown()
    }
    
    func test_error() async throws {
        do {
            _ = try await client.files.retrieve(id: "NOT-VALID-ID")
        } catch {
            print(error)
        }
        
    }
    
    func test_listModels() async throws {
        let models = try await client.models.list()
        print(models)
    }
    
    func test_retrieveModel() async throws {
        let models = try await client.models.retrieve(id: Model.GPT3.davinci.id)
        p