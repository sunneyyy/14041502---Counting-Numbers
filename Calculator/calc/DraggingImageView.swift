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
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startlocation = touches.first?.locationInView(self)
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startlocation!.x
        let dy = currentLocation!.y - startlocation!.y
        
        self.center = CGPointMake(self.center.x+dx, self.center.y+dy)
    }
    
    
    
}
