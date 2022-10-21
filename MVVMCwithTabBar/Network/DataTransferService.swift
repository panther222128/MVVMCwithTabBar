//
//  DataTransferService.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol DataTransferService {
    
}

final class DefaultDataTransferService: DataTransferService {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
}
