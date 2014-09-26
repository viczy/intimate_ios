//
//  INKHTTPRequestOperationManager.swift
//  intimate
//
//  Created by Vic Zhou on 9/26/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import Foundation

class INKHTTPRequestOperationManager: AFHTTPRequestOperationManager {
    class func sharedManager() -> INKHTTPRequestOperationManager {
        var sharedManager: INKHTTPRequestOperationManager?
        if let instance = sharedManager {
            //
        } else {
            sharedManager = INKHTTPRequestOperationManager(baseURL: NSURL(string: "http://localhost:3000/"))
            sharedManager?.requestSerializer = AFHTTPRequestSerializer();
//            sharedManager?.requestSerializer.setValue("Content-Type", forHTTPHeaderField: "application/json")

        }
        return sharedManager!
    }
}
