//
//  INRegisterController.swift
//  intimate
//
//  Created by Vic Zhou on 10/13/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

class INRegisterController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var backgroundScrollview: TPKeyboardAvoidingScrollView!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var nicknameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
    }

    // Mark: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //configure
        configureSubView()
    }

    // MARK: Configuration
    func configureSubView() {
        emailTextfield.delegate = self
        nicknameTextfield.delegate = self
        passwordTextfield.delegate = self
        confirmPasswordTextfield.delegate = self
        registerButton.enabled = false
        registerButton.layer.cornerRadius = 5
        registerButton.layer.borderWidth = 1.0
        registerButton.layer.borderColor = UIColor.whiteColor().CGColor
        registerButton.addTarget(self, action: "registerAction", forControlEvents:UIControlEvents.TouchUpInside)
    }


    @IBAction func cancelItemAction() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    //MARK: UITextfieldDelegate
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if emailTextfield.text.isEmpty || nicknameTextfield.text.isEmpty || passwordTextfield.text.isEmpty || confirmPasswordTextfield.text.isEmpty
        {
            registerButton.enabled = false
        } else {
            registerButton.enabled = true
        }
        return true
    }

    // MARK: Actions
    func registerAction() {
        INKLoginProvider.register(emailTextfield.text, name: nicknameTextfield.text, password: passwordTextfield.text, confirmpwd: confirmPasswordTextfield.text, success: { response in
            NSLog("success")
        }) { error in
            NSLog("%@",error.localizedDescription)
        }
//        let rootManager = INRootManager.sharedInstance()
//        rootManager.mainRoot()
    }
}
