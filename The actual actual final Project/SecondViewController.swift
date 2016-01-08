//
//  SecondViewController.swift
//  The actual actual final Project
//
//  Created by Student on 12/13/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    var Storys = Story()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "shady")!)
    }
    @IBAction func onButtonTapped(sender: UIButton) {
        Storys.Story1 = firstTextField.text!
        firstTextField.resignFirstResponder()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! ThirdViewController
        dvc.title = sender?.currentTitle
        dvc.Storys = self.Storys
    }
}
