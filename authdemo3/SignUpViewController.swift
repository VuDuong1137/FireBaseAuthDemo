//
//  SignUpViewController.swift
//  authdemo3
//
//  Created by Dương chãng on 5/29/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
class SignUpViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUP(_ sender: Any) {
        if email.text?.isEmpty == true{
            print("No text in email textField")
            return
        }
        if password.text?.isEmpty == true{
            print("NO text in pass textfield")
            return
        }
        signup()
    }
    
    @IBAction func AlreadyHaveAnAccountLogin(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storybord.instantiateViewController(identifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func signup() {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResulf, error) in
            guard let user = authResulf?.user, error == nil else{
                print("error \(error?.localizedDescription)")
                return
            }
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let vc = storybord.instantiateViewController(identifier: "man3")
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }

}
