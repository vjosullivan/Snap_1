//
//  extentionUIButton.swift
//  Snap_1
//
//  Created by Vincent O'Sullivan on 04/06/2017.
//  Copyright © 2017 Rose Cottage Industry. All rights reserved.
//

import UIKit

extension UIButton {

    /// Sets a standarized title font and background for the application's buttons.
    ///
    public func applySnapStyle() {
        titleLabel?.font = UIFont(name: "Action Man", size: 20) ?? UIFont.systemFont(ofSize: 20, weight: UIFontWeightBold)

        let buttonImage = UIImage(named: "Button")?.stretchableImage(withLeftCapWidth: 15, topCapHeight: 0)
        setBackgroundImage(buttonImage, for: .normal)

        let pressedImage = UIImage(named: "ButtonPressed")?.stretchableImage(withLeftCapWidth:15, topCapHeight:0)
        setBackgroundImage(pressedImage, for: .highlighted)
    }
}
