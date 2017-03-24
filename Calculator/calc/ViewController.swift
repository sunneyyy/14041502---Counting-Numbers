//
//  ViewController.swift
//  calc
//
//  Created by pl14aaq on 21/02/2017.
//  Copyright © 2017 pl14aaq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var Button5: UIButton!
    @IBOutlet var Button6: UIButton!
    @IBOutlet var Button7: UIButton!
    @IBOutlet var Button8: UIButton!
    @IBOutlet var Button9: UIButton!
    @IBOutlet var Button10: UIButton!
    
    
    @IBOutlet var Next: UILabel!
    var CorrectAnswer = String()
    
    @IBOutlet var LabelEnd: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Hide()
        Randomquestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func Randomquestions(){
        
        var RandomNumber = arc4random() % 10
        RandomNumber += 1
        
        
        switch(RandomNumber){
            
        case 1:
            QuestionLabel.text = " 1 + 0 ?"

            CorrectAnswer = "1"
            break
        case 2:
            QuestionLabel.text = "2 + 0 = ?";QuestionLabel.text = "1 + 1 = ?"
            
            CorrectAnswer = "2"
            break
        case 3:
            QuestionLabel.text = "3 + 0 = ?";QuestionLabel.text = "2 + 1 = ?"
            
            CorrectAnswer = "3"
            break
        case 4:
            QuestionLabel.text = "0 + 4 = ?"; QuestionLabel.text = "2 + 2 = ?"
            
            CorrectAnswer = "4"
            break
        case 5:
            QuestionLabel.text = "5 + 0 = ?";QuestionLabel.text = "3 + 2 = ?"
            CorrectAnswer = "5"
            break
        case 6:
            QuestionLabel.text = "6 + 0 = ?";QuestionLabel.text = "3 + 3 = ?"
            
            CorrectAnswer = "6"
            break
        case 7:
            QuestionLabel.text = "7 + 0 = ?";QuestionLabel.text = "5 + 2 = ?"
            CorrectAnswer = "7"
            break
        case 8:
            QuestionLabel.text = "8 + 0 = ?";QuestionLabel.text = "4 + 4 = ?"
            CorrectAnswer = "8"
            break
        case 9:
            QuestionLabel.text = "9 + 0 = ?";QuestionLabel.text = "6 + 3 = ?"
            CorrectAnswer = "9"
            break
        case 10:
            QuestionLabel.text = "0 + 0 = ?"
            CorrectAnswer = "0"
            break
        default:
            break
            
        }
    }
    
    func Hide(){
        LabelEnd.hidden = true
        Next.hidden = true
    }
    func UnHide(){
        LabelEnd.hidden = false
        Next.hidden = false
    }
    
    
    
    @IBAction func act11button(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "0"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
   
    
    @IBAction func Button2Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
  
    @IBAction func act3buttonsss(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    
    @IBAction func actt4butoonnss(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button4Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button5Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "5"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button6Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "6"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button7Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "7"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button8Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "8"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    @IBAction func Button9Action(sender: AnyObject) {
        UnHide()
        if (CorrectAnswer == "9"){
            LabelEnd.text = "You are Correct!"
        }
        else{
            LabelEnd.text = "You are Wrong!"
        }
    }
    
    
    @IBAction func Next(sender: AnyObject){
        Randomquestions()
    }
    

}

