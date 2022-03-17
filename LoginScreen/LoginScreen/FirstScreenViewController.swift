//
//  FirstScreenViewController.swift
//  LoginScreen
//
//  Created by Donia Elshenawy on 16/03/2022.
//

import UIKit

class FirstScreenViewController: UIViewController,Communitor {
   
    

    var namee = ""
    var pass = ""
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
        if(name == namee && password == pass){
            alartLabel.text = "Successfly"
        }
        else{
            alartLabel.text = "Faild, Enter again"
        }
        
    }
    
    @IBAction func signupBtn(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondSreenViewController") as? SecondSreenViewController{
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func data(name: String, password: String) {
        
        namee = name
        pass = password
        
    }
    

}

