//
//  ViewController.swift
//  MVVMDemo
//
//  Created by AJAY on 30/05/21.
//  Copyright © 2021 Individual. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var settingTbl: UITableView!
    @IBOutlet weak var settingTblHeight: NSLayoutConstraint!
    
    private var settingsViewModel: SettingsViewModel!
    
    private var dataSorceOfSettingsTable: SettingsTableViewDataSorce<SettingsCell, SettingsData, ViewController>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        callToViewModelForUIUpdate()

    }

    func callToViewModelForUIUpdate(){
        
        //Data Binding With view and View Model
        self.settingsViewModel =  SettingsViewModel()
        self.settingsViewModel.bindSettingsViewModelToController = {
            self.updateDataSource()
        }

    }
    
    func updateDataSource(){
                
        self.dataSorceOfSettingsTable = SettingsTableViewDataSorce(cellIdentifier: "SettingsCell", items: settingsViewModel.settingsData.data, tempTblHeight: self.settingTblHeight, fromWichViewContoller: self, configureCell: { (cell, settingItem) in
            //cell.settingsCellObject = settingItem
            cell.nameLbl.text = settingItem.value
            cell.TypeLbl.text = settingItem.accessKey
            cell.createdAtLbl.text = settingItem.createdAt.rawValue
        })
        
        DispatchQueue.main.async {
            self.settingTbl.dataSource = self.dataSorceOfSettingsTable
            self.settingTbl.delegate = self.dataSorceOfSettingsTable
            self.settingTbl.reloadData()
        }
    }
    
}

