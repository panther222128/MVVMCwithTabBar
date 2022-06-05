//
//  ViewController.swift
//  Coordinator
//
//  Created by Jun Ho JANG on 2022/05/05.
//

import UIKit

class FirstViewController: UIViewController {

    static let storyboardName = "Main"
    static let storyboardID = "FirstViewControllerID"
    
    private var firstViewModel: FirstViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    static func create(with viewModel: FirstViewModel) -> FirstViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: storyboardID) as? FirstViewController else { return FirstViewController() }
        viewController.firstViewModel = viewModel
        return viewController
    }

}

