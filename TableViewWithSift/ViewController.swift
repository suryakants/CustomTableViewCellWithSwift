//
//  ViewController.swift
//  TableViewWithSift
//
//  Created by Suryakant Sharma on 7/15/14.
//  Copyright (c) 2014 Suryakant. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UITableViewController,UITableViewDataSource,UISearchBarDelegate {
    

    
    override func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat
    {
        return 44.0
    }
    var cityList:String[] = ["Delhi","NYC","Sydney","Torato","Paris"]
    var countryList:String[] = ["India","United States","Australia","Canada","France"]
    let kCellIdentifier:String  = "MyCell"
    

    override  func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        println("numberOfRowsInSection")
        return 3;//countryList.count
    }
    
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        
        //let kCellIdentifier:String  = "cell"

        var cell = tableView.dequeueReusableCellWithIdentifier(kCellIdentifier) as MyCell!
        if cell == nil {
            tableView.registerClass(MyCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
            cell = MyCell(style: UITableViewCellStyle.Default, reuseIdentifier: kCellIdentifier)
        }
        

        if var label = cell.cellMyCity{
            label.text = cityList[indexPath.row]
        }
        if var label = cell.cellMyCountry{
            label.text = countryList[indexPath.row]
        }
        if var imageView = cell.imageView{
            imageView.image = UIImage(named :"img.png")
        }
        
        return cell
    }

}

