//
//  Objects.swift
//  test3
//
//  Created by Jonathan Nairn Tallen on 2016-10-01.
//  Copyright © 2016 Jonathan Nairn Tallen. All rights reserved.
//

import Foundation
import UIKit


let inputscontainerview: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor.whiteColor()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.layer.cornerRadius = 5
    view.layer.masksToBounds = true
    return view
}()



let nametextfeild: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Name"
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
    
}()
let namesepratorview: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

let emailtextfeild: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Email"
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
    
}()
let emailepratorview: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
}()

let passwordtfeild: UITextField = {
    let tf = UITextField()
    tf.placeholder = "Password"
    tf.secureTextEntry = true
    tf.translatesAutoresizingMaskIntoConstraints = false
    return tf
    
}()






let backgroundpicture: UIImageView = {
    
    let imageview = UIImageView()
    imageview.image = UIImage(named: "Party")
    imageview.contentMode = .ScaleAspectFit
    imageview.translatesAutoresizingMaskIntoConstraints = false
    return imageview
    
}()




let leftlabel: UILabel = {
    let label = UILabel()
    label.text = "Host"
    label.textColor = UIColor.whiteColor()
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

let rightlabel: UILabel = {
    let label = UILabel()
    label.text = "Join"
    label.textColor = UIColor(r: 51, g: 0, b: 204)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()



let leftview: UIView = {
    let lview = UIView()
    lview.backgroundColor = UIColor.blueColor()
    lview.translatesAutoresizingMaskIntoConstraints = false
    return lview
    
}()

let rightview: UIView = {
    let rview = UIView()
    rview.backgroundColor = UIColor.whiteColor()
    rview.translatesAutoresizingMaskIntoConstraints = false
    return rview
    
}()
    