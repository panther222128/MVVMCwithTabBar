//
//  SceneDIContainer.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

final class SceneDIContainer: ViewFlowCoordinatorDependencies {
 
    struct Dependencies {
        let apiDataTransferService: DataTransferService
    }
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func makeViewFlowCoordinator(tabBarController: UITabBarController) -> ViewFlowCoordinator {
        return ViewFlowCoordinator(tabBarController: tabBarController, dependencies: self)
    }
    
    func makeFirstRepository() -> FirstRepository {
        return DefaultFirstRepository(dataTransferService: self.dependencies.apiDataTransferService)
    }
    
    // MARK: - First
    
    func makeFirstUseCase() -> FirstUseCase {
        return DefaultFirstUseCase(firstRepository: self.makeFirstRepository())
    }
    
    func makeFirstViewModel() -> FirstViewModel {
        return DefaultFirstViewModel(firstUseCase: self.makeFirstUseCase())
    }
    
    func makeFirstViewController() -> FirstViewController {
        return FirstViewController.create(with: self.makeFirstViewModel())
    }
    
    // MARK: - Second
    
    func makeSecondUseCase() -> SecondUseCase {
        return DefaultSecondUseCase(firstRepository: self.makeFirstRepository())
    }
    
    func makeSecondViewModel() -> SecondViewModel {
        return DefaultSecondViewModel(secondUseCase: self.makeSecondUseCase())
    }
    
    func makeSecondViewController() -> SecondViewController {
        return SecondViewController.create(with: self.makeSecondViewModel())
    }
    
    // MARK: - Third
    
    func makeThirdUseCase() -> ThirdUseCase {
        return DefaultThirdUseCase(firstRepository: self.makeFirstRepository())
    }
    
    func makeThirdViewModel() -> ThirdViewModel {
        return DefaultThirdViewModel(thirdUseCase: self.makeThirdUseCase())
    }
    
    func makeThirdViewController() -> ThirdViewController {
        return ThirdViewController.create(with: self.makeThirdViewModel())
    }
    
}
