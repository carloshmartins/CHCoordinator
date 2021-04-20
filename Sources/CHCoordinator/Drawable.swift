import UIKit

open protocol Drawable {
    var viewController: UIViewController? { get }
}

extension UIViewController: Drawable {
    public var viewController: UIViewController? { return self }
}
