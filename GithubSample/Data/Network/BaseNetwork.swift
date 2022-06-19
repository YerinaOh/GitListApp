//
//  BaseNetwork.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import Foundation
import Combine

class BaseNetwork {
//    private let session: URLSession
//    let api = CenterAPI()
//
//    init(session: URLSession = .shared) {
//        self.session = session
//    }
//
//    func getCenterList() -> AnyPublisher<[GitData], URLError> {
//        guard let url = api.getCenterListComponents().url else {
//            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
//        }
//
//        var request = URLRequest(url: url)
//        request.setValue("Infuser 3gUbMESKsPcNX1hxbGHzWQPY2uhJ6+d4Y/bPogATMZEwV7OJNfzXbYivSt02upze4G4/VYKFGKY25xgKl6my3g==", forHTTPHeaderField: "Authorization")
//
//        return session.dataTaskPublisher(for: request)
//            .tryMap { data, response in
//                guard let httpResponse = response as? HTTPURLResponse else {
//                    throw URLError(.unknown)
//                }
//
//                switch httpResponse.statusCode {
//                case 200..<300:
//                    return data
//                case 400..<500:
//                    throw URLError(.clientCertificateRejected)
//                case 500..<599:
//                    throw URLError(.badServerResponse)
//                default:
//                    throw URLError(.unknown)
//                }
//            }
//            .decode(type: CenterAPIResponse.self, decoder: JSONDecoder())
//            .map { $0.data }
//            .mapError { $0 as! URLError }
//            .eraseToAnyPublisher()
    }
