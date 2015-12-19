//
//  ViewController.swift
//  Stopwatch
//
//  Created by SHIMIZU Taku on 2015/12/19.
//  Copyright © 2015年 takuan_osho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }

    @IBAction func pause(sender: UIBarButtonItem) {
        
    }
    
    @IBAction func reset(sender: UIBarButtonItem) {
        
    }
    
    func increaseTimer() {
        time++
        timerLabel.text = String(time)
    }
}

