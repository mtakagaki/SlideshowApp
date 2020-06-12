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
    }
    
  
}

