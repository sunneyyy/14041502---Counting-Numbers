//
//  ViewController2.swift
//  calc
//
//  Created by pl14aaq on 23/03/2017.
//  Copyright © 2017 pl14aaq. All rights reserved.
//

import UIKit






class ViewController2: UIViewController {
    
    @IBOutlet var Tittle_First: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Opening()

        // Do any additional setup after loading the view.
    }

    
    func Opening(){
        UIView.animateWithDuration(1.0, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: {
            self.Tittle_First.alpha = 0.2
            }, completion: nil)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
