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
        print(models)
    }
    
    func test_createCompletion() async throws {
        let completion = try await client.completions.create(
            model: Model.GPT3.davinci,
            prompts: ["Write a haiku"]
        )
        
        print(completion)
    }
    
    func test_createChat() async throws {
        let completion = try await client.chats.create(
            model: Model.GPT3.gpt3_5Turbo,
            messages: [
                Chat.Message(
                    role: "user",
                    content: "Write a haiku"
                )
            ]
        )
        
        print(completion)
    }
    
    func test_createEdit() async throws {
        let edit = try await client.edits.create(
            input: "Whay day of the wek is it?",
            instruction: "Fix the spelling mistakes"
        )
        
        print(edit)
    }
    
    func test_createImage() async throws {
        let image = try await client.images.create(prompt: "Tiger Woods eating soup")
        
        print(image)
    }
    
    func test_createEditImage() async throws {
        let url = Bundle.module.url(forResource: "logo", withExtension: "png")!
        
        let data = try Data(contentsOf: url)
        
        let image = try await client.images.createEdit(
            image: data,
            mask: data,
            prompt: "Change background color to blue"
        )
        
        print(image)
    }
    
    func test_createImageVariation() async throws {
        let url = Bundle.module.url(forResource: "logo", withExtension: "png")!
        
        let data = try Data(contentsOf: url)
        
        let image = try await client.images.createVariation(image: data)
        
        print(image)
    }
    
    func test_createEmbedding() async throws {
        let embedding = try await client.embeddings.