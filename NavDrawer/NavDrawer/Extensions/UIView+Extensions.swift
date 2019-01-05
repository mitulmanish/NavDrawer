import UIKit

extension UIView {
    public var isRTL: Bool {
        if #available(iOS 10.0, *) {
            return effectiveUserInterfaceLayoutDirection == .rightToLeft
        } else {
            return UIView.userInterfaceLayoutDirection(for: semanticContentAttribute) == .rightToLeft
        }
    }
}
