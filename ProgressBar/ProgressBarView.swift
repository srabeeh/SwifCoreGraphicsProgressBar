//
//  ProgressBarView.swift
//  ProgressBar
//
//  Created by Sam Rabeeh on 2016-10-19.
//  Copyright © 2016 Sam Rabeeh. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {

    
    private var _progress: CGFloat = 0.0
    
    var progress: CGFloat {
        set {
            if (newValue) > 1.0 {
                _progress = 1.0
            } else if (newValue) < 0.0 {
                _progress = 0
            } else {
                _progress = newValue
            }
            setNeedsDisplay()
        }
        
        get {
            return _progress * bounds.width
        }
    }
    
    override func draw(_ rect: CGRect) {
        ProgressBarVector.drawProgressBar(frame: bounds, progress: progress)
        
    }
}
