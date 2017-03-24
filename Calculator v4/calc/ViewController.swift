//
//  ViewController.swift
//  calc
//
//  Created by pl14aaq on 21/02/2017.
//  Copyright © 2017 pl14aaq. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

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
    
    @IBOutlet var apple1: DraggingImageView!
    
    @IBOutlet var apple2: DraggingImageView!
    
    @IBOutlet var apple3: DraggingImageView!
    
    @IBOutlet var apple4: DraggingImageView!
    
    @IBOutlet var apple5: DraggingImageView!
    
    @IBOutlet var apple6: DraggingImageView!
    
    @IBOutlet var apple7: DraggingImageView!
    
    @IBOutlet var apple8: DraggingImageView!
    
    @IBOutlet var apple9: DraggingImageView!
    
    @IBOutlet var apple10: DraggingImageView!
    
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var wrong: UIImageView!
    @IBOutlet weak var PlayButton: UIButton!
    
    var audioPlayer : AVAudioPlayer!
    
    func playVes() {
        do {
            self.audioPlayer =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("correctS", ofType: "mp3")!))
            self.audioPlayer.play()
            
        } catch {
            print("Error")
        }
    }
    
    
    
    
    @IBOutlet var Next: UILabel!
    var CorrectAnswer = String()
    
    @IBOutlet var LabelEnd: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wrongFlad()
        starFlad()
        // Do any additional setup after loading the view, typically from a nib.
        
        apple1.shake()
        apple2.shake()
        apple3.shake()
        apple4.shake()
        apple5.shake()
        apple6.shake()
        apple7.shake()
        apple8.shake()
        apple9.shake()
        apple10.shake()
        
        Hide()
        wrong.hidden = true
        Randomquestions()
    }
    

    func wrongFlad(){
        UIView.animateWithDuration(1.0, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: {
            self.wrong.alpha = 0.2
            }, completion: nil)
    }
    
    
    func starFlad(){
        UIView.animateWithDuration(1.0, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: {
            self.star.alpha = 0.2
            }, completion: nil)
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
        PlayButton.hidden = true
        star.hidden = true
        
        
    }
    func UnHide(){
        LabelEnd.hidden = false
        Next.hidden = false
        PlayButton.hidden = false
        star.hidden = false
        
    }
    
    
    
    @IBAction func act11button(sender: AnyObject) {
        
        if (CorrectAnswer == "0"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
           
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
   
    
    @IBAction func Button2Action(sender: AnyObject) {
        
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
  
    @IBAction func act3buttonsss(sender: AnyObject) {
        
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    
    @IBAction func actt4butoonnss(sender: AnyObject) {
        
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button4Action(sender: AnyObject) {
        
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button5Action(sender: AnyObject) {
        
        if (CorrectAnswer == "5"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button6Action(sender: AnyObject) {
        
        if (CorrectAnswer == "6"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button7Action(sender: AnyObject) {
        
        if (CorrectAnswer == "7"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button8Action(sender: AnyObject) {
        
        if (CorrectAnswer == "8"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    @IBAction func Button9Action(sender: AnyObject) {
        
        if (CorrectAnswer == "9"){
            LabelEnd.text = "You are Correct!"
            UnHide()
            wrong.hidden = true
            playVes()
            
        }
        else{
            LabelEnd.text = "You are Wrong!"
            wrong.hidden = false
        }
    }
    
    
    @IBAction func Next(sender: AnyObject){
        Hide()
        Randomquestions()
    }
    

}

