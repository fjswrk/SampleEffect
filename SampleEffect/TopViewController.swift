//
//  TopViewController.swift
//  SampleEffect
//
//  Created by sample on 2015/03/17.
//  Copyright (c) 2015年 sample. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var lightBtn: UIButton!
    @IBOutlet weak var extraLightBtn: UIButton!
    @IBOutlet weak var darkBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pressBtn(sender: UIButton) {
        performSegueWithIdentifier("showBlur", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showBlur"{
            let controller = segue.destinationViewController as ViewController
            if let btn = sender as? UIButton{
                if btn.isEqual(lightBtn){
                    controller.blurStyle = .Light
                }else if btn.isEqual(extraLightBtn){
                    controller.blurStyle = .ExtraLight
                }else if btn.isEqual(darkBtn){
                    controller.blurStyle = .Dark
                }
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
