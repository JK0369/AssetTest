//
//  ViewController.swift
//  AssetTest
//
//  Created by 김종권 on 2020/05/08.
//  Copyright © 2020 imustang. All rights reserved.
//

import UIKit

class TutorialContentsVC: UIViewController {
    
    var titleText: String!
    var imageFile: String!
    var pageIndex: Int!
    
    var titleLabel: UILabel!
    var bgImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel = UILabel()
        bgImageView = UIImageView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        titleLabel.text = titleText
        print(titleText!)
        if let img = UIImage(named: imageFile) {
            bgImageView.image = img
        } else {
            bgImageView.backgroundColor = .green
        }

        bgImageView.frame = CGRect(x: 0, y: 0, width: view.safeAreaLayoutGuide.layoutFrame.width, height: view.safeAreaLayoutGuide.layoutFrame.height)
        view.addSubview(bgImageView)

        titleLabel.frame = CGRect(x: view.frame.width/2, y: view.frame.height-100, width: 100, height: 30)
        view.addSubview(titleLabel)
    }
}
