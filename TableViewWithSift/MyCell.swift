//
//  MyCell.swift
//  ListView
//
//  Created by Suryakant Sharma on 7/15/14.
//  Copyright (c) 2014 Saravanan D. All rights reserved.
//

import Foundation
import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet var cellMyImage: UIImageView
    @IBOutlet var cellMyCity: UILabel
    @IBOutlet var cellMyCountry: UILabel
    
    init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}