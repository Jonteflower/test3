//
//  LoginViewController.swift
//  test3
//
//  Created by Jonathan Nairn Tallen on 2016-09-21.
//  Copyright © 2016 Jonathan Nairn Tallen. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {
    
    lazy var Facebookloginbuton: FBSDKLoginButton = {
        let button = FBSDKLoginButton()
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.addTarget(self, action: #selector(facebookLogin), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    lazy var loginregistersgmentedcontroller: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Register","Login"])
        sc.tintColor = UIColor.whiteColor()
        sc.selectedSegmentIndex = 1
        sc.translatesAutoresizingMaskIntoConstraints = false
        sc.addTarget(self, action: #selector(handleloginregisterhange), forControlEvents: .ValueChanged)
        return sc
    }()
    
    let profileimagevew: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "profilbild")
        imageview.contentMode = .ScaleAspectFit
        imageview.layer.cornerRadius = 5
        imageview.layer.masksToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    lazy var loginregisterbuttuon: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleregister), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func handleloginregisterhange() {
        
        
    }
    
    func facebookLogin (sender: AnyObject){
        let facebookLogin = FBSDKLoginManager()
        print("Logging In")
        facebookLogin.logInWithReadPermissions(["email"], fromViewController: self, handler:{(facebookResult, facebookError) -> Void in
            if facebookError != nil { print("Facebook login failed. Error \(facebookError)")
            } else if facebookResult.isCancelled { print("Facebook login was cancelled.")
            } else { print("You’re inz ;)")}
        });
    }

    
    func handleregister(){
        guard let email = emailtextfeild.text, password = passwordtfeild.text, name = nametextfeild.text
            else {
                print("Form is not valid")
                return
        }
        FIRAuth.auth()?.createUserWithEmail(email, password: password, completion: { (user:FIRUser?, err) in
            
            if err != nil{
                print(err?.description)
            }
            
            guard let uid = user?.uid else {
                return
            }
            
            //succesfully authencticated user
            let ref = FIRDatabase.database().referenceFromURL("https://test3-72ae2.firebaseio.com/")
            let userreference = ref.child("users").child(uid)
            let values = ["email":email, "name":name]
            userreference.updateChildValues(values, withCompletionBlock: { (error, ref) in
                if error != nil {
                    print(error?.description)
                }
                
                print("Saved user ")
            })
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

   
        view.backgroundColor = UIColor(red: 51/255, green: 0/255, blue: 204/255, alpha: 1)
        view.addSubview(profileimagevew)
        view.addSubview(inputscontainerview)
        view.addSubview(loginregisterbuttuon)
        view.addSubview(loginregistersgmentedcontroller)
        view.addSubview(Facebookloginbuton)
        setuploginregisterbuttn()
        setupinputscontainerview()
        setupprofileimage()
        setuploginregistersegmentedcontroller()
        setupfacebookloginbutton()

    }
    
    func setupfacebookloginbutton() {
        
        Facebookloginbuton.topAnchor.constraintEqualToAnchor(loginregisterbuttuon.bottomAnchor, constant: 10).active = true
        Facebookloginbuton.rightAnchor.constraintEqualToAnchor(view.rightAnchor,constant:  -12).active = true
        Facebookloginbuton.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor, multiplier: 0.5).active = true
        Facebookloginbuton.heightAnchor.constraintEqualToConstant(50).active = true
    }
    
    func setuploginregistersegmentedcontroller()  {
        loginregistersgmentedcontroller.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        loginregistersgmentedcontroller.bottomAnchor.constraintEqualToAnchor(inputscontainerview.topAnchor, constant: -12).active = true
    loginregistersgmentedcontroller.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        loginregistersgmentedcontroller.heightAnchor.constraintEqualToConstant(30).active = true
    }
    
    func setupprofileimage() {
        // constraint x,y, width, height
        profileimagevew.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        profileimagevew.bottomAnchor.constraintEqualToAnchor(loginregistersgmentedcontroller.topAnchor, constant: -15).active = true
        profileimagevew.widthAnchor.constraintEqualToConstant(150).active = true
        profileimagevew.heightAnchor.constraintEqualToConstant(150).active = true
        
        
        
    }
    
    
    func setuploginregisterbuttn() {
        // constraint x,y, width, height
        loginregisterbuttuon.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        loginregisterbuttuon.topAnchor.constraintEqualToAnchor(inputscontainerview.bottomAnchor, constant:12).active = true
        loginregisterbuttuon.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        loginregisterbuttuon.heightAnchor.constraintEqualToConstant(50).active = true
    }
    
    func setupinputscontainerview() {
        // constraint x,y, width, height
        inputscontainerview.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        inputscontainerview.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        inputscontainerview.widthAnchor.constraintEqualToAnchor(view.widthAnchor, constant: -24).active = true
        inputscontainerview.heightAnchor.constraintEqualToConstant(150).active = true
        
        inputscontainerview.addSubview(nametextfeild)
        inputscontainerview.addSubview(namesepratorview)
        inputscontainerview.addSubview(passwordtfeild)
        inputscontainerview.addSubview(emailtextfeild)
        inputscontainerview.addSubview(emailepratorview)
        
        // constraint x,y, width, height
        nametextfeild.leftAnchor.constraintEqualToAnchor(inputscontainerview.leftAnchor, constant: 12).active = true
        nametextfeild.topAnchor.constraintEqualToAnchor(inputscontainerview.topAnchor).active = true
        nametextfeild.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        
        nametextfeild.heightAnchor.constraintEqualToAnchor(inputscontainerview.heightAnchor, multiplier: 1/3).active = true
        
        namesepratorview.leftAnchor.constraintEqualToAnchor(inputscontainerview.leftAnchor).active = true
        namesepratorview.topAnchor.constraintEqualToAnchor(nametextfeild.bottomAnchor).active = true
        namesepratorview.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        namesepratorview.heightAnchor.constraintEqualToConstant(1).active = true
        
        // constraint x,y, width, height
        emailtextfeild.leftAnchor.constraintEqualToAnchor(inputscontainerview.leftAnchor, constant: 12).active = true
        emailtextfeild.topAnchor.constraintEqualToAnchor(nametextfeild.bottomAnchor).active = true
        emailtextfeild.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        
        emailtextfeild.heightAnchor.constraintEqualToAnchor(inputscontainerview.heightAnchor, multiplier: 1/3).active = true
        
        emailepratorview.leftAnchor.constraintEqualToAnchor(inputscontainerview.leftAnchor).active = true
        emailepratorview.topAnchor.constraintEqualToAnchor(emailtextfeild.bottomAnchor).active = true
        emailepratorview.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        emailepratorview.heightAnchor.constraintEqualToConstant(1).active = true
        
        passwordtfeild.leftAnchor.constraintEqualToAnchor(inputscontainerview.leftAnchor, constant: 12).active = true
        passwordtfeild.topAnchor.constraintEqualToAnchor(emailtextfeild.bottomAnchor).active = true
        passwordtfeild.widthAnchor.constraintEqualToAnchor(inputscontainerview.widthAnchor).active = true
        
        passwordtfeild.heightAnchor.constraintEqualToAnchor(inputscontainerview.heightAnchor, multiplier: 1/3).active = true
        
    }
    
    
    


  

}
