//
//  ViewController.swift
//  SlideshowApp
//
//  Created by takagaki miki on 2020/06/09.
//  Copyright © 2020 miki.takagaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UIImageView: UIImageView!
    
    var imageIndex = 0
    var timer: Timer!
    
    
    
    @objc func updateTimer(_ timer: Timer) {
        if imageIndex < imageNameArray.count - 1 {
            imageIndex += 1
            displayImage()
        } else {
            imageIndex = 0
            displayImage()
        }
    }
    
    let imageNameArray = ["dog.JPG","dog2.JPG","dog3.JPG"]
    
    func displayImage() {
        let name = imageNameArray[imageIndex]
        let image = UIImage(named: name)
        UIImageView.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image = UIImage(named: "dog.JPG")

        UIImageView.image = image
    }

    
    @IBOutlet weak var nextB: UIButton!
    
    @IBOutlet weak var backB: UIButton!
    
    @IBOutlet weak var switchB: UIButton!
    
    
    @IBAction func nextButton(_ sender: Any) {
        if imageIndex == 2 {
                  imageIndex = 0
              } else {
                  imageIndex += 1
              }
        displayImage()
    }
    
    @IBAction func backButton(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        displayImage()
    }
    
    @IBAction func switchButton(_ sender: Any) {
        if self.timer == nil {
        self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)

            switchB.setTitle("停止", for: .normal)
            nextB.isEnabled = false
            backB.isEnabled = false
            
        } else if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil

            switchB.setTitle("再生", for: .normal)
            nextB.isEnabled = true
            backB.isEnabled = true
                  
        
        }
    }
    
  
}

