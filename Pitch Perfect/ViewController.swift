//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Tin Van on 4/2/15.
//  Copyright (c) 2015 Tin Van. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton)
    {
        
        //TODO: Record User's Voice
        recordLabel.hidden = false
        stopButton.hidden = false
    }

    @IBAction func stopRecording(sender: UIButton)
    {
        recordLabel.hidden = true
        stopButton.hidden = true
    }
}

