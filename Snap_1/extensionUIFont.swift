//
//  extensionUIFont.swift
//  Snap_1
//
//  Created by Vincent O'Sullivan on 04/06/2017.
//  Copyright © 2017 Rose Cottage Industry. All rights reserved.
//

import UIKit

extension UIFont {

    public class func snapFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "Action Man", size: size) ?? UIFont.systemFont(ofSize: size, weight: UIFontWeightBold)
    }
}
