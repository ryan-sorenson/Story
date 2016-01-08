//
//  ThirdViewController.swift
//  The actual actual final Project
//
//  Created by Student on 12/13/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    var Storys = Story()

    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "shady")!)
    }
    @IBAction func onButtonTapped2(sender: UIButton) {
        Storys.Story2 = textField2.text!
        textField2.resignFirstResponder()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! FourthViewController
        dvc.title = sender?.currentTitle
        dvc.Storys = self.Storys
    }
}
