//
//  StartViewController.swift
//  AssetTest
//
//  Created by 김종권 on 2020/05/08.
//  Copyright © 2020 imustang. All rights reserved.
//

import UIKit
class StartViewController: UIViewController {
    
    var tvc: TutorialMasterVC!
    var first: UITextView!
    
    override func viewDidLoad() {
        
        first = UITextView()
        first.text = "first screen"
        first.textColor = .black
        first.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(first)
        
        tvc = TutorialMasterVC()
    }
    
    func checkFirstRun() {
        let ud = UserDefaults.standard
        if ud.bool(forKey: UserInfoKey.tutorial) == false {
            print("before ud=\(ud.bool(forKey: UserInfoKey.tutorial))")
            
            tvc.modalPresentationStyle = .fullScreen
            self.present(tvc!, animated: false)
        }
    }
}
