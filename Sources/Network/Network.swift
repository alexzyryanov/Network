import Foundation

public struct Network: @unchecked Sendable {
    static public func request(_ type: NetworkRequestProtocol) async throws -> Data {
        try await NetworkService.request(type)
    }
}
