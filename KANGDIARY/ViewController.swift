//
//  ViewController.swift
//  KANGDIARY
//
//  Created by Kanghos on 2021/11/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var backupRestoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         =====> S-CoreDream-2ExtraLight
         5Medium
         9Black
         */
        welcomLabel.text = LocalizableStrings.welcome_text.localized
        //NSLocalizedString("welcome_text", comment: "")
        //11~20
        welcomLabel.font = UIFont().mainBlack
        
        backupRestoreLabel.text = LocalizableStrings.data_backup.localizedSetting
//        backupRestoreLabel.text = NSLocalizedString("data_backup", tableName: "Setting", bundle: .main, value: "", comment: "")
        
        
    }

}

