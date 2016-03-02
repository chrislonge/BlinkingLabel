//
//  BlinkingLabel.swift
//  Pods
//
//  Created by Longe, Chris on 3/2/16.
//
//

import UIKit

public class BlinkingLabel: UILabel {

    public func startBlinking() {
        let options: UIViewAnimationOptions = [.Repeat, .Autoreverse]
        UIView.animateWithDuration(0.25, delay: 0.0, options: options, animations: { () -> Void in
            self.alpha = 0
            }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1.0
        layer.removeAllAnimations()
    }
}
