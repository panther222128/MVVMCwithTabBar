//
//  FirstUseCase.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol FirstUseCase {
    
}

final class DefaultFirstUseCase: FirstUseCase {
    
    private let firstRepository: FirstRepository
    
    init(firstRepository: FirstRepository) {
        self.firstRepository = firstRepository
    }
    
}
