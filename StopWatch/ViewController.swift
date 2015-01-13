//
//  ViewController.swift
//  StopWatch
//
//  Created by Isaac Osiemo on 1/13/15.
//  Copyright (c) 2015 appbaseLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lblTime: UILabel!
    
    var timer = NSTimer()
    var count = 0
    @IBAction func btnCancel(sender: AnyObject) {
        timer.invalidate()
        count = 0
        lblTime.text = String(count)
    
    }
    
    @IBAction func btnPause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func btnPlay(sender: AnyObject) {
        //code that is here will be run as soon as the app is run
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            }
    
    //making functions 
    func result() {
        println("test")
        count++
        lblTime.text = String(count)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

