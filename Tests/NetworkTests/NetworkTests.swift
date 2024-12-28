import XCTest
@testable import Network

final class NetworkTests: XCTestCase {
    
    func testGoogle() async {
        do {
            let result = try await Network.fetchGoogle()
            XCTAssertFalse(result.isEmpty)
            
        } catch {
            XCTFail()
        }
    }
}
