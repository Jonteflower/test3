//
//  ViewController.swift
//  test3
//
//  Created by Jonathan Nairn Tallen on 2016-09-21.
//  Copyright © 2016 Jonathan Nairn Tallen. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    let picturelabel: UILabel = {
        let label = UILabel()
        label.text = "eevent"
        label.textColor = UIColor.whiteColor()
        label.shadowColor = UIColor.blackColor()
        label.layer.borderColor = UIColor.blackColor().CGColor
        label.textAlignment = .Center
        label.font = label.font.fontWithSize(60)
        label.adjustsFontSizeToFitWidth = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handlelogout))
        
        
        view.addSubview(backgroundpicture)
        view.addSubview(leftview)
        view.addSubview(rightview)
        setuprightview()
        setupleftview()
        setupbackgroudimage()
    
    }
    
    func setupbackgroudimage() {
        
        // need x, y , height, width constraint
       backgroundpicture.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
       backgroundpicture.bottomAnchor.constraintEqualToAnchor(leftview.topAnchor).active = true
       backgroundpicture.widthAnchor.constraintEqualToAnchor(view.widthAnchor).active = true
       backgroundpicture.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.4).active = true
        
        backgroundpicture.addSubview(picturelabel)
        
        
        picturelabel.centerXAnchor.constraintEqualToAnchor(backgroundpicture.centerXAnchor).active = true
        picturelabel.topAnchor.constraintEqualToAnchor(backgroundpicture.topAnchor, constant: 50).active = true
        
        

        
        
    }
    
    func setuprightview(){
        // need x, y , height, width constraint
       
        rightview.rightAnchor.constraintEqualToAnchor(view.rightAnchor).active = true
        rightview.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5).active = true
        rightview.heightAnchor.constraintEqualToAnchor(view.heightAnchor,multiplier: 0.6).active = true
        rightview.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        
        rightview.addSubview(rightlabel)
        
        //need x, y, width, height constraints
       
        rightlabel.centerYAnchor.constraintEqualToAnchor(rightview.centerYAnchor).active = true
        rightlabel.centerXAnchor.constraintEqualToAnchor(rightview.centerXAnchor, constant: 1).active = true
        rightlabel.widthAnchor.constraintEqualToConstant(70).active = true
        rightlabel.heightAnchor.constraintEqualToConstant(30).active = true

    }
    
    func setupleftview() {
       // need x, y , height, width constraint
        //need x, y, width, height constraints
        leftview.leftAnchor.constraintEqualToAnchor(view.leftAnchor)
        leftview.heightAnchor.constraintEqualToAnchor(view.heightAnchor, multiplier: 0.6).active = true
        leftview.widthAnchor.constraintEqualToAnchor(view.widthAnchor, multiplier: 0.5).active = true
        leftview.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        
        leftview.addSubview(leftlabel)
        
        leftlabel.centerYAnchor.constraintEqualToAnchor(leftview.centerYAnchor).active = true
        leftlabel.centerXAnchor.constraintEqualToAnchor(leftview.centerXAnchor, constant: 1).active = true
        leftlabel.widthAnchor.constraintEqualToConstant(70).active = true
        leftlabel.heightAnchor.constraintEqualToConstant(30).active = true
    }

    func handlelogout() {
        let logincontroller = LoginViewController()
        presentViewController(logincontroller, animated: true, completion: nil)
    }


}

