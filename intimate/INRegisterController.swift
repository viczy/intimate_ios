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
        registerButton.enabled = false
        registerButton.layer.cornerRadius = 5
        registerButton.layer.borderWidth = 1.0
        registerButton.layer.borderColor = UIColor.whiteColor().CGColor
        registerButton.addTarget(self, action: "loginAction", forControlEvents:UIControlEvents.TouchUpInside)
    }


    func cancelItemAction() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
