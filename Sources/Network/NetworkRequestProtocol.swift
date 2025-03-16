public protocol NetworkRequestProtocol {
    var method: NetworkRequestMethod { get }
    var path: String { get }
}
