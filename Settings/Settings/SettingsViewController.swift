//
//  SettingsViewController.swift
//  Settings
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SettingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //MARK: - UITableViewDataSource/Delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        let setting = SettingController.shared.settings[indexPath.row]
        cell.setting = setting
        
        return cell
    }
    
    
    // MARK: - SettingTableviewCellDelegate
    
    func settingIsOnValueChanged(cell: SettingTableViewCell, selectedValue: Bool) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        SettingController.shared.updateSetting(setting: setting, valueSelected: selectedValue)
        
        self.tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
}
