//
//  MailComposerViewController.swift
//  musicPlayerApp
//
//  Created by MacStudent on 2019-11-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

import MessageUI
class MailComposerViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var sendMail: UIButton!
    
    
    
    @IBAction func sendMail(_ sender: Any) {
        
        if MFMailComposeViewController.canSendMail() {
        let message:String  = "Changes in mail composer ios 11"
        let composePicker = MFMailComposeViewController()
        composePicker.mailComposeDelegate = self
        composePicker.delegate = self
        composePicker.setToRecipients(["example@gmail.com"])
        composePicker.setSubject("Testing Email")
        composePicker.setMessageBody(message, isHTML: false)
        self.present(composePicker, animated: true, completion: nil)
        } else {
        self .showErrorMessage()
        }
        }
        func showErrorMessage() {
            let alertMessage = UIAlertController(title: "could not sent email", message: "check if your device have email support!", preferredStyle: UIAlertController.Style.alert)
            let action = UIAlertAction(title:"Okay", style: UIAlertAction.Style.default, handler: nil)
        alertMessage.addAction(action)
        self.present(alertMessage, animated: true, completion: nil)
        
        
    }
    
    
    

func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
switch result {
case .cancelled:
print("Mail cancelled")
case .saved:
print("Mail saved")
case .sent:
print("Mail sent")
case .failed:
break
}
self.dismiss(animated: true, completion: nil)
}
}
