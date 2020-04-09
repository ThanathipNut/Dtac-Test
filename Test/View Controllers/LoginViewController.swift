//
//  LoginViewController.swift
//  Test
//
//  Created by Thanathip Suppapantita on 8/4/20.
//  Copyright © 2020 Thanathip. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FacebookLogin

class LoginViewController: UIViewController, LoginButtonDelegate {
    
    @IBOutlet weak var fbLoginButton: FBLoginButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AccessToken.isCurrentAccessTokenActive {
            self.performSegue(withIdentifier: "LogedInSegue", sender: nil)
        }
        
        fbLoginButton.delegate = self
        fbLoginButton.permissions = ["user_posts"]
    }
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if AccessToken.current != nil {
                self.performSegue(withIdentifier: "LogedInSegue", sender: nil)
            }
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {}
    
}

