//
//  ViewController.swift
//  sample1
//
//  Created by 小山雅斗 on 2017/04/10.
//  Copyright © 2017年 pixiv.Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textlabal: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtenTouchUpInside(_ sender: Any) {
        textlabal.text = "簡単だ！"
    }
   

}

