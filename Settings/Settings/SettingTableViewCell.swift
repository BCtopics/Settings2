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
    
    //MARK: - Internal Properties
    
    var setting: Setting? {
        didSet {
            guard let setting = setting else { return }
            isOnSwitch.isOn = setting.isOn
            settingLabel.text = setting.name
            settingImageView.image = setting.image
        }
    }
    
}
