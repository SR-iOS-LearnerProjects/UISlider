//
//  ViewController.swift
//  UISliderChangeOpacity
//
//  Created by Sridatta Nallamilli on 24/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderChangeOpacity(_ sender: UISlider) {
        image.alpha = CGFloat(sender.value)
    }
    
    @IBOutlet weak var sliderTwoOutput: UILabel!
    @IBOutlet weak var sliderTwo: UISlider!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderTwo.addTarget(self, action: #selector(sliderTwoDidChange(slider:)), for: .valueChanged)
        
        sliderTwoDidChange(slider: sliderTwo)
    }

    @objc
    func sliderTwoDidChange(slider: UISlider) {
        let currentSliderTwoValue = Int(slider.value)
        sliderTwoOutput.text = "\(currentSliderTwoValue)"
        
//        sliderTwoOutput.text = String(Int(slider.value))
    }

}

