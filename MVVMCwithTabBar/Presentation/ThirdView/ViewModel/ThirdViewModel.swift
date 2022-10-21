//
//  ThirdViewModel.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import Foundation

protocol ThirdViewModel {
    
}

final class DefaultThirdViewModel: ThirdViewModel {
    
    private let thirdUseCase: ThirdUseCase
    
    init(thirdUseCase: ThirdUseCase) {
        self.thirdUseCase = thirdUseCase
    }
    
}
