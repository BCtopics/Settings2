//
//  SettingController.swift
//  Settings
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class SettingController {
    
    static let shared = SettingController()
    
    var settings: [Setting]
    
    init() {
        // Create
        // Mock Data
        let itunesSetting = Setting(image: #imageLiteral(resourceName: "itunes"), name: "iTunes", isOn: false)
        let ibooksSetting = Setting(image: #imageLiteral(resourceName: "ibooks"), name: "iBooks", isOn: false)
        let appsSetting = Setting(image: #imageLiteral(resourceName: "apps"), name: "App Store", isOn: false)
        
        self.settings = [itunesSetting, ibooksSetting, appsSetting]
    }
    
    // Update
    func updateSetting(setting: Setting, valueSelected: Bool) {
        
        setting.isOn = valueSelected
    }
    
}
