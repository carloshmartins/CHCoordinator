import Foundation

open class BaseCoordinator : Coordinator {
    public var childCoordinators : [Coordinator] = []
    public var isCompleted: (() -> ())?

    open func start() {
        fatalError("Children should implement `start`.")
    }
    
    open func start(coordinator: BaseCoordinator) {
        self.store(coordinator: coordinator)
        coordinator.isCompleted = { [weak self, weak coordinator] in
            self?.free(coordinator: coordinator)
        }
        coordinator.start()
    }
}
