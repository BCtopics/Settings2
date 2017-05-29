//
//  Setting.swift
//  Settings
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class Setting {
    
    //MARK: - Internal Properties
    
    var image: UIImage?
    let name: String
    var isOn: Bool
    
    //MARK: - Initializers
    
    init(image: UIImage?, name: String, isOn: Bool) {
        
        self.image = image
        self.name = name
        self.isOn = isOn
    }
    
}
