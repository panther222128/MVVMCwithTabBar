//
//  SecondViewController.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

class SecondViewController: UIViewController {

    static let storyboardName = "Main"
    static let storyboardID = "SecondViewControllerID"
    
    private var viewModel: SecondViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static func create(with viewModel: SecondViewModel) -> SecondViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: storyboardID) as? SecondViewController else { return SecondViewController() }
        viewController.viewModel = viewModel
        return viewController
    }
    
}
