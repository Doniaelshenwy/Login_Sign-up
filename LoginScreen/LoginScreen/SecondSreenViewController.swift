//
//  SecondSreenViewController.swift
//  LoginScreen
//
//  Created by Donia Elshenawy on 16/03/2022.
//

import UIKit

class SecondSreenViewController: UIViewController{

    var delegate : Communitor?
    var comingMsg1 : String = ""
    var comingMsg2 : String = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    

    @IBAction func saveBtn(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text, let password = passwordTextField.text else {
            return
        }
        delegate?.data(name: name, password: password)
        self.navigationController?.popViewController(animated: true)
        
    }

    

}
