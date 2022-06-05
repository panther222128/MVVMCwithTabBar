//
//  SecondUseCase.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol SecondUseCase {
    
}

final class DefaultSecondUseCase: SecondUseCase {
    
    private let firstRepository: FirstRepository
    
    init(firstRepository: FirstRepository) {
        self.firstRepository = firstRepository
    }
    
}
