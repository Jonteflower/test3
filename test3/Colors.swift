//
//  Colors.swift
//  test3
//
//  Created by Jonathan Nairn Tallen on 2016-09-30.
//  Copyright © 2016 Jonathan Nairn Tallen. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(r: CGFloat, g:CGFloat, b:CGFloat){
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
}


