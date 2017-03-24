//
//  DraggingImageView.swift
//  calc
//
//  Created by pl14aaq on 21/03/2017.
//  Copyright © 2017 pl14aaq. All rights reserved.
//

import UIKit

class DraggingImageView: UIImageView {

    var startlocation: CGPoint?
    
    let h = UIScreen.mainScreen().bounds.height
    let w = UIScreen.mainScreen().bounds.width
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startlocation = touches.first?.locationInView(self)
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startlocation!.x
        let dy = currentLocation!.y - startlocation!.y
        
        if (self.center.y+dy > (self.h * 400 / 736) && self.center.x+dx > 7 && self.center.x+dx < self.w - 10)
        {self.center = CGPointMake(self.center.x+dx, self.center.y+dy)}
    }
    
    func shake () {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 2.05
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(CGPoint: CGPoint(x: self.center.x, y: self.center.y - 4))
        animation.toValue = NSValue(CGPoint: CGPoint(x: self.center.x, y: self.center.y + 4))
        
        self.layer.addAnimation(animation, forKey: "position")
    }
    
    
}
