//
//  ViewController.swift
//  MVVM Practice
//
//  Created by Rajesh Panda on 28/06/22.
//

import UIKit

class ViewController: UIViewController {
    var dataModel: DataModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Service.sharedInstance.getAllData { data, error in
            
            if error == nil {
                print(data!)
            }else {
                print(error!)
            }
        }
    }


}

