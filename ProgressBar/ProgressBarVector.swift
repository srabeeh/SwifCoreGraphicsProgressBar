//
//  ProgressBarVector.swift
//  ProgressBar
//
//  Created by Sam Rabeeh on 2016-10-19.
//  Copyright (c) 2016 CompanyName. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class ProgressBarVector : NSObject {

    //// Drawing Methods
    let progress = 0

    public class func drawProgressBar(frame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 16), progress: CGFloat = 183) {
        //// Color Declarations
        let color = UIColor(red: 0.840, green: 0.207, blue: 0.207, alpha: 1.000)

        //// Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 1, y: frame.minY + 1, width: floor((frame.width - 1) * 0.99666 + 0.5), height: 14), cornerRadius: 7)
        color.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()


        //// Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 1, width: progress, height: 14), cornerRadius: 7)
        color.setFill()
        progressActivePath.fill()
    }

}

@objc protocol StyleKitSettableImage {
    func setImage(image: UIImage!)
}

@objc protocol StyleKitSettableSelectedImage {
    func setSelectedImage(image: UIImage!)
}