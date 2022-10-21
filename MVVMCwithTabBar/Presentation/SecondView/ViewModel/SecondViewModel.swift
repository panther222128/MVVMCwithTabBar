//
//  SecondViewModel.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol SecondViewModel {
    
}

final class DefaultSecondViewModel: SecondViewModel {
    
    private let secondUseCase: SecondUseCase
    
    init(secondUseCase: SecondUseCase) {
        self.secondUseCase = secondUseCase
    }
    
}
