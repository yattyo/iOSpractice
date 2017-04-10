//
//  SampleImageViewController.swift
//  sample1
//
//  Created by 小山雅斗 on 2017/04/10.
//  Copyright © 2017年 pixiv.Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class SampleImageViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://pbs.twimg.com/profile_images/378800000759359120/5b1eea90e463d27ccef6b22edb0392f8_400x400.png").responseImage { response in
            self.ImageView.image = response.result.value
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

