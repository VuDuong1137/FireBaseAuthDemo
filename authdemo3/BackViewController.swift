//
//  BackViewController.swift
//  authdemo3
//
//  Created by Dương chãng on 5/29/20.
//  Copyright © 2020 macshop. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Back(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
                          let vc = storybord.instantiateViewController(identifier: "Login")
                          vc.modalPresentationStyle = .overFullScreen
                          present(vc, animated: true, completion: nil)
    }
    
    @IBAction func BackSigup(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storybord.instantiateViewController(identifier: "signup")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
