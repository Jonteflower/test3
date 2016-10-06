//
//  LoginViewController.swift
//  test3
//
//  Created by Jonathan Nairn Tallen on 2016-09-21.
//  Copyright © 2016 Jonathan Nairn Tallen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let profileimagevew: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "profilbild")
        imageview.contentMode = .ScaleAspectFit
        imageview.layer.cornerRadius = 5
        imageview.layer.masksToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

   
        view.backgroundColor = UIColor(red: 51/255, green: 0/255, blue: 204/255, alpha: 1)
        view.addSubview(profileimagevew)
        view.addSubview(inputscontainerview)
        view.addSubview(loginregisterbuttuon)
        setuploginregisterbuttn()
        setupinputscontainerview()
        setupprofileimage()

    }
    
    func setupprofileimage() {
        // constraint x,y, width, height
        profileimagevew.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        profileimagevew.bottomAnchor.constraintEqualToAnchor(inputscontainerview.topAnchor, constant: -30).active = true
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
