//
//  HomeViewModel.swift
//  GithubSample
//
//  Created by ohyesrina on 2022/06/19.
//

import Foundation

class HomeViewModel: ObservableObject {
    private let homeUseCase: Homeuse
    @Published var gitData: [GitData] = []
}
