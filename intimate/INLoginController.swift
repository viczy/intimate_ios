//
//  INLoginController.swift
//  intimate
//
//  Created by Vic Zhou on 9/22/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

class INLoginController: UIViewController, UITextFieldDelegate {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }

    // MARK: Properties
    @IBOutlet var backgroundScroollView: TPKeyboardAvoidingScrollView?
    @IBOutlet var accountTextField: UITextField?
    @IBOutlet var passwordTextField: UITextField?
    @IBOutlet var loginButton: UIButton?

    // Mark: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //configure
        configureSubView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Configuration
    func configureSubView() {
        accountTextField!.placeholder = "账号"
        accountTextField!.clearButtonMode = .WhileEditing
        passwordTextField!.placeholder = "密码"
        passwordTextField!.clearButtonMode = .WhileEditing
        loginButton!.enabled = false
        loginButton!.layer.cornerRadius = 5
        loginButton!.layer.borderWidth = 1.0
        loginButton!.layer.borderColor = UIColor.whiteColor().CGColor
        loginButton!.addTarget(self, action: Selector(loginAction()), forControlEvents:UIControlEvents.TouchUpInside)
    }

    //MARK: UITextfieldDelegate
    func textFieldDidEndEditing() {
        if accountTextField!.text.isEmpty || passwordTextField!.text.isEmpty
        {
            loginButton!.enabled = false
        } else {
            loginButton!.enabled = true
        }
    }

    // MARK: Actions
    func loginAction() {
        let rootManager = INRootManager.sharedInstance()
        rootManager.mainRoot()
    }
}
