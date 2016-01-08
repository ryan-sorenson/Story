//
//  FifthViewController.swift
//  The actual actual final Project
//
//  Created by Student on 12/13/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var Storys = Story()

    @IBAction func resetButton(sender: UIButton) {
        reset()
    }
    @IBOutlet weak var storyText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = Storys.writeStory()
    }
    func reset() {
        var Story1 = ""
        var Story2 = ""
        var Story3 = ""
    }
}
