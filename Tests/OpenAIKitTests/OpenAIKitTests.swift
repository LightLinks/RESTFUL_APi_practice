import XCTest
import AsyncHTTPClient
@testable import OpenAIKit

final class OpenAIKitTests: XCTestCase {
    
    private var httpClient: HTTPClient!
    private var client: Client!
    
    override func setUp() {
        httpClient = HTTPClient(eventLoopGroupProvider: .createNew)
        
        let c