import Foundation

struct NetworkService {
    static func request(_ type: NetworkRequestProtocol) async throws -> Data {
        let urlRequest = try createURLRequest(type)
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkServiceError.invalidResponse
        }
        
        guard (200...299).contains(httpResponse.statusCode) else {
            throw NetworkServiceError.httpError(httpResponse.statusCode)
        }
        
        return data
    }
    
    private static func createURLRequest(_ type: NetworkRequestProtocol) throws -> URLRequest {
        guard let url = URL(string: type.urlString) else {
            throw NetworkServiceError.invalidURL
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = type.method.rawValue
        
        return urlRequest
    }
}
