//
//  SettingsTableViewDataSorce.swift
//  MVVMDemo
//
//  Created by AJAY on 22/06/21.
//  Copyright © 2021 Individual. All rights reserved.
//

import UIKit

class SettingsTableViewDataSorce<CELL: UITableViewCell, T, viewController: UIViewController>: NSObject, UITableViewDataSource, UITableViewDelegate  {
    
    private var cellIdentifier : String!
    private var items : [T]!
    var configureCell : (CELL, T) -> () = {_,_ in }
   private var tblHeight: NSLayoutConstraint!
    private var fromViewContoller: viewController
    
    
    init(cellIdentifier : String, items : [T], tempTblHeight: NSLayoutConstraint, fromWichViewContoller: viewController, configureCell : @escaping (CELL, T) -> ()) {
         self.cellIdentifier = cellIdentifier
         self.items =  items
         self.configureCell = configureCell
        self.tblHeight = tempTblHeight
        self.fromViewContoller = fromWichViewContoller
     }
    
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CELL
        
        let item = self.items[indexPath.row]
        self.configureCell(cell, item)
        return cell
    }
    
//MARK: UITableViewDelegate
       
         func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath){
                self.tblHeight.constant = tableView.contentSize.height + 70
            self.fromViewContoller.view.layoutIfNeeded()
                }
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         
           return UITableView.automaticDimension
         
       }
       
       func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
           return 123
       }
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
       {
          //
       }
}
