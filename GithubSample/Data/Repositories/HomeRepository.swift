//
//  HomeRepository.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import Foundation
import Combine

struct RepositoryAPI {
    static let scheme = "https"
    static let host = "api.github.com"
    static let path = "/users/YerinaOh/repos"
    
    func getCenterListComponents() -> URLComponents {
        var components = URLComponents()
        
        components.scheme = RepositoryAPI.scheme
        components.host = RepositoryAPI.host
        components.path = RepositoryAPI.path
        
        components.queryItems = [
            URLQueryItem(name: "per_page", value: "100")
        ]
        
        return components
    }
}

class HomeRepository {
    private let session: URLSession
    let api = RepositoryAPI()
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func getGITList() -> AnyPublisher<[GitData], URLError> {
        guard let url = api.getCenterListComponents().url else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        let request = URLRequest(url: url)
//        request.setValue("Infuser 3gUbMESKsPcNX1hxbGHzWQPY2uhJ6+d4Y/bPogATMZEwV7OJNfzXbYivSt02upze4G4/VYKFGKY25xgKl6my3g==", forHTTPHeaderField: "Authorization")
        
        return session.dataTaskPublisher(for: request)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw URLError(.unknown)
                }
                
                switch httpResponse.statusCode {
                case 200..<300:
                    return data
                case 400..<500:
                    throw URLError(.clientCertificateRejected)
                case 500..<599:
                    throw URLError(.badServerResponse)
                default:
                    throw URLError(.unknown)
                }
            }
            .decode(type: GirRepositoryResponse.self, decoder: JSONDecoder())
            .compactMap { $0.data }
            .mapError { $0 as! URLError }
            .eraseToAnyPublisher()
    }
}

extension HomeRepository {
    
    public func gitList(request: String, cached: @escaping ([GitData]) -> Void, completion: @escaping (Result<[GitData], Error>) -> Void) -> Cancellable? {
        return self.getGITList()
    }
}
