//
//  FirstScreenViewController.swift
//  LoginScreen
//
//  Created by Donia Elshenawy on 16/03/2022.
//

import UIKit

class FirstScreenViewController: UIViewController,Communitor {
   
    
    var img : UIImage?
    var namee = ""
    var pass = ""
   
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var alartLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var imgPass: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        curveTextField(field: nameTextField)
        curveTextField(field: passwordTextField)
        image.image = UIImage(named: "Loc")
        imgPass.image = UIImage(named: "Glyph")
    
        
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        guard let name = nameTextField.text, let password = passwordTextField.text else {
            return
        }
        if(name.isEmpty || password.isEmpty){
           return
        }
        else{
            if(name == namee && password == pass){
                alartLabel.text = "Successfly"
            }
            else{
                alartLabel.text = "Faild, Enter again"
            }
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
    
    func curveTextField(field : UITextField){
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 2
        field.layer.borderColor = UIColor.blue.cgColor
        
        field.leftView = UIView(frame: CGRect(x: 15, y: 0, width: 35, height: 62))
        field.leftViewMode = .always
    }

}

