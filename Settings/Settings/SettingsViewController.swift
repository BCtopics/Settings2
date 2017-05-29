//
//  SettingsViewController.swift
//  Settings
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.shared.settings[indexPath.row]
        cell.setting = setting
        
        return cell
    }
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
}
