public protocol NetworkRequestProtocol {
    var method: NetworkRequestMethod { get }
    var urlString: String { get }
}
