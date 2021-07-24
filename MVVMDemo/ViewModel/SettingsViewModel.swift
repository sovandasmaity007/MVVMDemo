//
//  SettingsViewModel.swift
//  MVVMDemo
//
//  Created by AJAY on 22/06/21.
//  Copyright © 2021 Individual. All rights reserved.
//

import UIKit

class SettingsViewModel: NSObject {

    
    private(set) var settingsData : SettingsModel! {
           didSet {
               self.bindSettingsViewModelToController()
           }
       }
    
    var bindSettingsViewModelToController : (() -> ()) = {}

    
    override init() {
        super.init()
        self.callFuncToGetSettingData()
    }
    
    func callFuncToGetSettingData() {
      APIBaseClass.APIBaseClassObject.apiToGetSettingsData { (settingsModel) in
          print(settingsModel)
        self.settingsData = settingsModel
      }
     }
}
