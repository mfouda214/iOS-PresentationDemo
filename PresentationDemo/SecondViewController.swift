//
//  SecondViewController.swift
//  PresentationDemo
//
//  Created by echessa on 2/23/16.
//  Updated by Mohamed Fouda 4/2/18.
//  Copyright © 2016 Career Foundry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionButtonTapped(_ sender: UIBarButtonItem) {
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: "InformationViewController")
            viewController.modalPresentationStyle = .popover
            let popover: UIPopoverPresentationController = viewController.popoverPresentationController!
            popover.barButtonItem = sender
            present(viewController, animated: true, completion:nil)
        
    }


}

