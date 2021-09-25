//
//  SecondViewController.swift
//  Protocol&DelegateSwift
//
//  Created by Raj on 05/06/17.
//  Copyright © 2017 Raj. All rights reserved.
//

import UIKit

protocol DataPass {
    func data(object :[String:String])
}
class SecondViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    
     var delegate:DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSaveClick(_ sender: UIButton) {
        if txtName.text == "" {
            alert(title: "Error Occured", mes: "Please Enter Your Name", delegate: self)
        } else if txtAddress.text == "" {
            alert(title: "Error Occured", mes: "Please Enter Your Address", delegate: self)
        } else if txtCity.text == "" {
            alert(title: "Error Occured", mes: "Please Enter Your City", delegate: self)
        } else {
            let dict:[String:String] = ["name":txtName.text!,"address":txtAddress.text!,"city":txtCity.text!]
            delegate.data(object: dict)
        }
    }

    func alert(title: String, mes:String, delegate:AnyObject) {
        let alert = UIAlertView()
        alert.title = title
        alert.message = mes
        alert.addButton(withTitle: "OK")
        alert.delegate = delegate
        alert.show()
    }
}
