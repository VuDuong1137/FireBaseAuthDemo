//
//  LoginViewController.swift
//  authdemo3
//
//  Created by Dương chãng on 5/29/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    
    @IBOutlet weak var passWorf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginTappad(_ sender: Any) {
         ValidateFilds()
    }
    
    @IBAction func CreateAccount(_ sender: Any) {
        let storrybod = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storrybod.instantiateViewController(identifier: "signup")
        // phải đặt indertifier cho màn đo
        
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: true,completion: nil)
    }
    //ValidateFilds -> xác thực xem có hợp lệ hay ko
    func ValidateFilds(){
        
        if email.text?.isEmpty == true {
            print("không có email nhập vào")
            return
        }
        if passWorf.text?.isEmpty == true{
            print("không có password")
            return
        }
        login()
        
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email.text!, password: passWorf.text!) { [weak self](authresulf, err) in
            guard let Strongself = self else {return}
            if let err = err {
                print(err.localizedDescription)
            }
            self!.checkuserinfo()
        }
        
       
    }
        
    func checkuserinfo(){
        if Auth.auth().currentUser != nil{
            print(Auth.auth().currentUser?.uid)
    }
        let storybord = UIStoryboard(name: "Main", bundle: nil)
                   let vc = storybord.instantiateViewController(identifier: "man3")
                   vc.modalPresentationStyle = .overFullScreen
                   self.present(vc, animated: true, completion: nil)
    }
}
