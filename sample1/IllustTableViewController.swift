//
//  IllustTableViewController.swift
//  sample1
//
//  Created by 小山雅斗 on 2017/04/10.
//  Copyright © 2017年 pixiv.Inc. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage



// UITableViewControllerを継承

private let imageURL =
    ["https://pbs.twimg.com/profile_images/378800000759359120/5b1eea90e463d27ccef6b22edb0392f8_400x400.png",
     "https://pbs.twimg.com/media/C84kiHOVYAI9H3P.jpg",
     "https://pbs.twimg.com/media/C8uk9URUIAEGVK6.jpg"
    ]


class IllustTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let illustCell = tableView.dequeueReusableCell(withIdentifier: "IllustCell") as! IllustCell
        Alamofire.request(imageURL[indexPath.row]).responseImage { response in
            illustCell.illustImageView.image = response.result.value
        }
        illustCell.titleLabel.text = "title"
        return illustCell
    }
}
