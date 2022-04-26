//
//  Communitor.swift
//  LoginScreen
//
//  Created by Donia Elshenawy on 16/03/2022.
//

import Foundation
import UIKit
protocol Communitor{
    func data(name : String, password : String)
    func curveTextField(field : UITextField)
}
