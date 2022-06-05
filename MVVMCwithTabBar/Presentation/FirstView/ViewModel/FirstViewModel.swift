//
//  FirstViewModel.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol FirstViewModel {
    
}

final class DefaultFirstViewModel: FirstViewModel {
    
    private let firstUseCase: FirstUseCase
    
    init(firstUseCase: FirstUseCase) {
        self.firstUseCase = firstUseCase
    }
    
}
