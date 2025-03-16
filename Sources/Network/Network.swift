// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct Network {
    static func request(_ type: NetworkRequestProtocol) async throws -> Data {
        try await NetworkService.request(type)
    }
}
