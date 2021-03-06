//
//  INKLoginProvider.swift
//  intimate
//
//  Created by Vic Zhou on 9/26/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import Foundation

class INKLoginProvider: NSObject {
    class func login (accout:NSString, password:NSString, success:((AnyObject!) -> Void)!, failure:((NSError!) -> Void)!) {
        var parameters = ["session[email]":accout, "session[password]":password]

        INKHTTPRequestOperationManager.sharedManager().POST("sessions.json" , parameters:parameters, success: { operation, response in
            success(response)
        }) { operation, error in
            failure(error)
        }
    }

    class func register(email:NSString, name:NSString, password:NSString, confirmpwd:NSString, success:((AnyObject!) -> Void)!, failure:((NSError!) -> Void)!) {
        var parameters = ["user[email]":email, "user[name]":name, "user[password]":password, "user[password_confirmation]":confirmpwd]

        INKHTTPRequestOperationManager.sharedManager().POST("users.json" , parameters:parameters, success: { operation, response in
            success(response)
        }) { operation, error in
            failure(error)
        }
    }

}