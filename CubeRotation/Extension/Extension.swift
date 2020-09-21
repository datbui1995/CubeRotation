//
//  Extension.swift
//  CubeRotation
//
//  Created by Dat Bui on 9/22/20.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadNib<T: UIViewController>(_ viewControllerType: T.Type) -> T {
        let className = String.className(viewControllerType)
        return self.init(nibName: className, bundle: .main) as! T
    }
    class func loadNib() -> Self {
        return loadNib(self)
    }
}

extension String {
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last ?? ""
    }
}
