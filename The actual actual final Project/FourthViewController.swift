//
//  FourthViewController.swift
//  The actual actual final Project
//
//  Created by Student on 12/13/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    var Storys = Story()
    
    @IBOutlet weak var textField3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "shady")!)
    }
    @IBAction func onButtonTapped3(sender: UIButton) {
        Storys.Story3 = textField3.text!
        textField3.resignFirstResponder()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! FifthViewController
        dvc.title = sender?.currentTitle
        dvc.Storys = self.Storys
    }
}
