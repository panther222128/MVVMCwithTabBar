//
//  ThirdUseCase.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol ThirdUseCase {
    
}

final class DefaultThirdUseCase: ThirdUseCase {
    
    private let firstRepository: FirstRepository
    
    init(firstRepository: FirstRepository) {
        self.firstRepository = firstRepository
    }
    
}
