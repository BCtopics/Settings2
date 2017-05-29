//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var isOnSwitch: UISwitch!
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    
    //MARK: - IBActions
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        
        
        
    }
    
}
