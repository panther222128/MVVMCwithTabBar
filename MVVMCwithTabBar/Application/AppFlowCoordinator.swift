//
//  AppFlowCoordinator.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

final class AppFlowCoordinator {

    var tabBarController: UITabBarController
    private let appDIContainer: AppDIContainer
    
    init(tabBarController: UITabBarController,
         appDIContainer: AppDIContainer) {
        self.tabBarController = tabBarController
        self.appDIContainer = appDIContainer
    }
    
    func start() {
        let sceneDIContainer = appDIContainer.makeSceneDIContainer()
        let flow = sceneDIContainer.makeViewFlowCoordinator(tabBarController: tabBarController)
        flow.start()
    }
    
}
