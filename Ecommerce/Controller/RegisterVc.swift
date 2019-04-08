//
//  RegisterVc.swift
//  EcommerceApp
//
//  Created by macbook pro on 06/04/2019.
//  Copyright © 2019 macbook pro. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class RegisterVc: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPassTxt: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var passChekImg: UIImageView!
    @IBOutlet weak var conformChekImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPassTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        guard let passTxt = passwordTxt.text else {return}
        if textField == confirmPassTxt {
            passChekImg.isHidden = false
            conformChekImage.isHidden = false
        } else {
            if passTxt.isEmpty {
                passChekImg.isHidden = true
                conformChekImage.isHidden = true
                confirmPassTxt.text = ""
            }
        }
        if passwordTxt.text == confirmPassTxt.text {
            passChekImg.image = UIImage(named: AppImages.GreenChecked)
            conformChekImage.image = UIImage(named: AppImages.GreenChecked)
        }else {
            passChekImg.image = UIImage(named: AppImages.RedChecked)
            conformChekImage.image = UIImage(named: AppImages.RedChecked)
        }

    }
    
    
    @IBAction func registerClicked(_ sende:Any){
        guard let email = emailTxt.text, email.isNotEmpty ,
            let username = usernameTxt.text , username.isNotEmpty ,
            let password = passwordTxt.text , password.isNotEmpty else {return}
        activityIndicator.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            print("succesfully registred new user.")
        }
    }
    

}
