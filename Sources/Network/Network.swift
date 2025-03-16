// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct Network {
    static public func request(_ type: NetworkRequestProtocol) async throws -> Data {
        try await NetworkService.request(type)
    }
}
