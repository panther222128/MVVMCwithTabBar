//
//  ThirdViewController.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

class ThirdViewController: UIViewController {
    
    static let storyboardName = "Main"
    static let storyboardID = "ThirdViewControllerID"
    
    private var viewModel: ThirdViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    static func create(with viewModel: ThirdViewModel) -> ThirdViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: storyboardID) as? ThirdViewController else { return ThirdViewController() }
        viewController.viewModel = viewModel
        return viewController
    }
    
}
