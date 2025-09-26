public protocol NetworkRequestProtocol: Sendable {
    var method: NetworkRequestMethod { get }
    var urlString: String { get }
}
