//
//  SampleCoordinator.swift

import UIKit

class SampleCoordinator : BaseCoordinator {

    let router: RouterProtocol

    init(router: RouterProtocol) {
        self.router = router
    }

    override func start() {
        
        let viewModel = FirstViewModel()
        let viewController = FirstViewController(viewModel: viewModel)
        viewController.parentCoordinator = self

        router.push(viewController, isAnimated: true, onNavigateBack: self.isCompleted)
    }

    // we can go further in our flow if we need to
    func showNextScreen() {
        let newCoordinator = FirstCoordinator(router: router)
        self.start(coordinator: newCoordinator)
    }
}
