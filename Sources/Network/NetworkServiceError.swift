enum NetworkServiceError: Error {
    case invalidURL
    case invalidResponse
    case httpError(Int)
}
