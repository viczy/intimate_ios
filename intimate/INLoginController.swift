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
    @IBOutlet var backgroundScroollView: TPKeyboardAvoidingScrollView!
    @IBOutlet var accountTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!

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
        NSLog("%@", self.view.description)
        accountTextField.placeholder = "账号"
        accountTextField.clearButtonMode = .WhileEditing
        accountTextField.delegate = self
        passwordTextField.placeholder = "密码"
        passwordTextField.clearButtonMode = .WhileEditing
        passwordTextField.delegate = self
        loginButton.enabled = false
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderWidth = 1.0
        loginButton.layer.borderColor = UIColor.whiteColor().CGColor
        loginButton.addTarget(self, action: "loginAction", forControlEvents:UIControlEvents.TouchUpInside)
    }

    //MARK: UITextfieldDelegate
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if accountTextField!.text.isEmpty || passwordTextField!.text.isEmpty
        {
            loginButton.enabled = false
        } else {
            loginButton.enabled = true
        }
        return true
    }

    // MARK: Actions
    func loginAction() {
        INKLoginProvider.login(accountTextField.text, password: passwordTextField.text, success: {
            response in
            NSLog("success")
        }) { error in
            NSLog("%@",error.localizedDescription)
        }
//        let rootManager = INRootManager.sharedInstance()
//        rootManager.mainRoot()
    }
}
