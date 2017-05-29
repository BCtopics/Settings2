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
        
        delegate?.settingIsOnValueChanged(cell: self, selectedValue: isOnSwitch.isOn)
        
    }
    
    //MARK: - Internal Properties
    
    var setting: Setting? {
        didSet {
            guard let setting = setting else { return }
            isOnSwitch.isOn = setting.isOn
            settingLabel.text = setting.name
            settingImageView.image = setting.image
            self.backgroundColor = setting.isOn ? UIColor.green : UIColor.lightGray
        }
    }
    
    weak var delegate: SettingTableViewCellDelegate?
    
}


//MARK: - Custom Protocol

protocol SettingTableViewCellDelegate: class {
    
    func settingIsOnValueChanged(cell: SettingTableViewCell, selectedValue: Bool)
    
}
