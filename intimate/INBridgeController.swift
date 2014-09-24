//
//  INBridgeController.swift
//  intimate
//
//  Created by Vic Zhou on 9/24/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

class INBridgeController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    // MARK: Properties
    var listBlogs = []

    // MARK: View Life Cycle
    override func viewDidLoad()  {
        super.viewDidLoad()
    }

    // MARK: UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 2
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "INBridgeCell";
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)  as? INBridgeCell
        if let myCell = cell {
            myCell.ContentLabel?.text = "这事一个山洞里卡看风景的时刻老封建的；酸辣粉框架是；阿拉法打瞌睡附件里是；咖啡机都凯萨琳；放得开撒放假都流口水；阿伏伽德罗萨克；封疆大吏；撒放假了；的撒会计分录；萨克的减肥了可；撒旦法尽快萨洛克；发动机上课了打；附件是打了卡；放假的撒凉快分"
        }
        return cell!
    }

    // MARK: UITableViewDelegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
    }
}
