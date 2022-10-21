//
//  ViewFlowCoordinator.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

protocol ViewFlowCoordinatorDependencies {
    func makeFirstViewController() -> FirstViewController
    func makeSecondViewController() -> SecondViewController
    func makeThirdViewController() -> ThirdViewController
}

final class ViewFlowCoordinator {
    
    private weak var tabBarController: UITabBarController?
    private let dependencies: ViewFlowCoordinatorDependencies
    
    private weak var firstViewController: FirstViewController?
    private weak var secondViewController: SecondViewController?
    private weak var thirdViewController: ThirdViewController?
    
    init(tabBarController: UITabBarController, dependencies: ViewFlowCoordinatorDependencies) {
        self.tabBarController = tabBarController
        self.dependencies = dependencies
    }
    
    func start() {
        let firstVC = dependencies.makeFirstViewController()
        self.firstViewController = firstVC
        
        let secondVC = dependencies.makeSecondViewController()
        self.secondViewController = secondVC
        
        let thirdVC = dependencies.makeThirdViewController()
        self.thirdViewController = thirdVC
        
        let firstItem = UITabBarItem(title: "First", image: nil, tag: 0)
        let secondItem = UITabBarItem(title: "Second", image: nil, tag: 1)
        let thirdItem = UITabBarItem(title: "Third", image: nil, tag: 2)
        
        guard let firstViewController = firstViewController else { return }
        guard let secondViewController = secondViewController else { return }
        guard let thirdViewController = thirdViewController else { return }

        firstViewController.tabBarItem = firstItem
        secondViewController.tabBarItem = secondItem
        thirdViewController.tabBarItem = thirdItem
        
        self.tabBarController?.viewControllers = [firstViewController, secondViewController, thirdViewController]
    }
    
}
