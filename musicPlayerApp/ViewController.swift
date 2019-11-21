//
//  ViewController.swift
//  musicPlayerApp
//
//  Created by MacStudent on 2019-11-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var shareButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func shareNow(_ sender: Any) {
        
          
           if let name = URL(string: "https://apps.apple.com/ca/app/apple-store/id375380948"), !name.absoluteString.isEmpty {
               let objectsToShare = [name]
               let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)

               self.present(activityVC, animated: true, completion: nil)
           }else  {
               // show alert for not available
           }
        
        
               }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
