// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation


@available(macOS 12.0, *)
struct Network {
    static func fetchGoogle() async throws -> String {
        let request = URLRequest(url: URL(string: "https://google.com")!)
        let (data, _) = try await URLSession.shared.data(for: request)
        let dataString = String(decoding: data, as: UTF8.self)
        return dataString
    }
}
