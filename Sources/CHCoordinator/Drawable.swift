import UIKit

public protocol Drawable {
    var viewController: UIViewController? { get }
}

extension UIViewController: Drawable {
    public var viewController: UIViewController? { return self }
}
