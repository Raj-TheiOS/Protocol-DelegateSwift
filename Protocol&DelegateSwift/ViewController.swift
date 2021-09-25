//
//  ViewController.swift
//  Protocol&DelegateSwift
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataPass {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    func data(object:[String:String]) {
        lblName.text = object["name"]
        lblAddress.text = object["address"]
        lblCity.text = object["city"]
    }
}

