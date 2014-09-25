//
//  INKHTTPSessionManager.swift
//  intimate
//
//  Created by Vic Zhou on 9/25/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

let host = "localhost:3000/"

import Foundation

class INKHTTPSessionManager: AFHTTPSessionManager {
    class func sharedClient() -> INKHTTPSessionManager {
        var sharedInstance: INKHTTPSessionManager?
        if let instance = sharedInstance {
            //
        } else {
            sharedInstance = INKHTTPSessionManager(baseURL: NSURL(string: host))
        }
        sharedInstance?.securityPolicy = AFSecurityPolicy.defaultPolicy()
        return sharedInstance!
    }
}