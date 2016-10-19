//
//  ViewController.swift
//  ProgressBar
//
//  Created by Sam Rabeeh on 2016-10-19.
//  Copyright © 2016 Sam Rabeeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressBarView: ProgressBarView!

    @IBOutlet weak var sliderBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func sliderChanged(_ sender: UISlider) {
        progressBarView.progress = CGFloat(sliderBar.value)
        
    }

}

