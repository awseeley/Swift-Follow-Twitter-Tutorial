//
//  ViewController.swift
//  OpenTwitterPage


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func openTwitterPage(sender: UIButton) {
        
        var twUrl: NSURL = NSURL(string: "twitter://user?screen_name=SeemuApps")!
        var twUrlWeb: NSURL = NSURL(string: "https://twitter.com/SeemuApps")!
        
        if(UIApplication.sharedApplication().canOpenURL(twUrl)) {
            // If user twitter installed
            UIApplication.sharedApplication().openURL(twUrl)
        } else {
            // If user does not have twitter installed
            UIApplication.sharedApplication().openURL(twUrlWeb)
        }
        
    }

}

