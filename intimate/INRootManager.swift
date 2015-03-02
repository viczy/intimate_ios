//
//  INRootManager.swift
//  intimate
//
//  Created by Vic Zhou on 9/22/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import Foundation

class INRootManager: NSObject {
    // MARK: Properties
    var myWindow: UIWindow

    // Mark: View Life Cycle
    override init() {
        self.myWindow = INRootManager.mainWidow()
    }

    //MARK: Actions

    func loginRoot() -> Void{
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let loginController: INLoginController = storyboard.instantiateViewControllerWithIdentifier(
        "INLoginController") as INLoginController
        self.myWindow.rootViewController = loginController
    }

    func mainRoot() -> Void {
        let tabController = INTabbarController();
        self.myWindow.rootViewController = tabController
    }

    //MARK: Class Actions

    class func sharedInstance() -> INRootManager {
        var sharedInstance: INRootManager?
        if let instance = sharedInstance {
            //
        } else {
            sharedInstance = INRootManager()
        }
        return sharedInstance!
    }

    class func mainWidow() -> UIWindow {
        let app = UIApplication.sharedApplication()
        if let window = app.delegate?.window {
            return window!
        }else {
            return app.keyWindow!
        }
    }
}