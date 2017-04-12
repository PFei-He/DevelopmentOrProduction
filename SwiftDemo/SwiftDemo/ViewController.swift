//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Fay on 2017/4/12.
//  Copyright © 2017年 Fay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = systemInfo(for: "HOST_URL").replacingOccurrences(of: "\\", with: "")
        
        print("current compiled version: "+version)
        
        #if DEVELOPMENT
            print("If the current compiled version is development, print this message.")
            print("So can do something only for debug, such as print run record.")
        #endif
    }
    
    func systemInfo(for name: String) -> String {
        if let dictionary = Bundle.main.infoDictionary {
            return dictionary[name] as! String
        } else {
            return ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

