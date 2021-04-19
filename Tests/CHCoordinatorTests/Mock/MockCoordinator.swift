//
//  MockCoordinator.swift
//  
//
//  Created by carlos.henrique.martrins on 19/04/21.
//

import Foundation
import UIKit
@testable import CHCoordinator

class MockCoordinator : Coordinator {
    
    var childCoordinators: [Coordinator]
    var navigationController: UINavigationController?
    var isCompleted: (() -> ())?

    init(navigationController :UINavigationController?) {
        self.navigationController = navigationController
    }

    override func start() {
        
    }

    // we can go further in our flow if we need to
    func showDetail(_ product: Product, in navigationController: UINavigationController?) {
        let newCoordinator = NewCoordinator(product: product, navigationController: navigationController)
        self.store(coordinator: newCoordinator)
    }
}
