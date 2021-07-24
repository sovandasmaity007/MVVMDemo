//
//  SettingsCell.swift
//  MVVMDemo
//
//  Created by AJAY on 22/06/21.
//  Copyright © 2021 Individual. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var TypeLbl: UILabel!
    @IBOutlet weak var createdAtLbl: UILabel!
    
//    var settingsCellObject : SettingsData? {
//        didSet {
//
//            self.createdAtLbl.text = settingsCellObject?.createdAt
//            self.nameLbl.text = settingsCellObject?.value
//            self.TypeLbl.text = settingsCellObject?.accessKey
//
//        }
//      }
    //MARK: Initial func
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
