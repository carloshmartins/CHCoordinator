import Foundation

public class BaseCoordinator : Coordinator {
    public var childCoordinators : [Coordinator] = []
    public var isCompleted: (() -> ())?

    public func start() {
        fatalError("Children should implement `start`.")
    }
    
    public func start(coordinator: BaseCoordinator) {
        self.store(coordinator: coordinator)
        coordinator.isCompleted = { [weak self, weak coordinator] in
            self?.free(coordinator: coordinator)
        }
        coordinator.start()
    }
}
