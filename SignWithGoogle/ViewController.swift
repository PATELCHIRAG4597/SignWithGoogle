//
//  ViewController.swift
//  SignWithGoogle
//
//  Created by CodeInfoWay CodeInfoWay on 3/18/23.
import UIKit
import GoogleSignIn
class ViewController: UIViewController {
    
    let signInconfig = GIDConfiguration.init(clientID:"838256168929-qo9ga6i753bsc8anar5ooo2s2d30enro.apps.googleusercontent.com")
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func GoogleBtn(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else { return }
            guard let signInResult = signInResult else { return }

               let user = signInResult.user
               let emailAddress = user.profile?.email

       }
    
    }
}
