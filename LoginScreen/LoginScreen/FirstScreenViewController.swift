//
//  FirstScreenViewController.swift
//  LoginScreen
//
//  Created by Donia Elshenawy on 16/03/2022.
//

import UIKit

class FirstScreenViewController: UIViewController,Communitor {
   
    

    var flag : Bool = false
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var alartLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        guard let name = nameTextField.text, let password = passwordTextField.text else {
            return
        }
        if(flag){
            alartLabel.text = "success"
        }
        else{
            alartLabel.text = "fail"
        }
        
        
    }
    
    @IBAction func signupBtn(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondSreenViewController") as? SecondSreenViewController{
            vc.delegate = self
           
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func data(name: String, password: String) {
        
        guard let name = nameTextField.text, let password = passwordTextField.text else {
            return
        }
        if(name == nameTextField.text && password == passwordTextField.text){
            flag = true
        }
        else{
            flag = false
        }
    }
    

}

