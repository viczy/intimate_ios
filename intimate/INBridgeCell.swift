//
//  INBridgeCell.swift
//  intimate
//
//  Created by Vic Zhou on 9/24/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

class INBridgeCell: UITableViewCell {
    @IBOutlet var ContentLabel: UILabel?

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        var height = self.frame.size.height
        var width = self.frame.size.width
        var labelWidth = ContentLabel?.frame.size.width
        NSLog("hello")
    }
}
