//
//  FirstViewController.swift
//  PresentationDemo
//
//  Created by echessa on 2/23/16.
//  Updated by Mohamed Fouda 4/2/18.
//  Copyright © 2016 Career Foundry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlertButtonTapped(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Confirm?", message: "Would you like to confirm this action?", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            print("User tapped Cancel")
        }
        
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: { (alert) in
            print("User tapped Yes")
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(yesAction)

       
        present(alertController, animated: true, completion: nil)
        
    }
    
}

