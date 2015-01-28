//
//  ViewController.swift
//  ScareTheBug
//
//  Created by William Judd on 1/27/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tap: UITapGestureRecognizer?
    
    
    @IBOutlet weak var Bug: UIView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tap = UITapGestureRecognizer(target: self, action: Selector("handleTap:"))
    }
    
    
    func moveBug() {
        
        UIView.animateWithDuration(0.5,
            delay: 0.0,
            options: .CurveEaseInOut | .AllowUserInteraction,
            animations: {
                self.Bug.center = CGPoint(x: self.randomBetweenNumbers(0, secondNum: 320), y: self.randomBetweenNumbers(20, secondNum: 460))
            },
            completion: { finished in
                println("Bug moved!")
        })
    }
    
    
    
    func handleTap(gesture: UITapGestureRecognizer) {
        let tapLocation = gesture.locationInView(Bug.superview)
        if Bug.layer.presentationLayer().frame.contains(tapLocation) {
            println("Bug tapped!")
            // add bug-squashing code here
            moveBug()
        } else {
            println("Bug not tapped!")
        }
    }
    
    
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addGestureRecognizer(tap!)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

