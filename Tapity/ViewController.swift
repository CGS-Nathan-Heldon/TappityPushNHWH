//
//  ViewController.swift
//  Tapity
//
//  Created by Nathan Heldon on 29/5/17.
//  Copyright © 2017 Nathan Heldon. All rights predeserved.
//  yeet

import UIKit

    

class ViewController: UIViewController {

    var counter = 30
    var score = 0

    var clockRunning = false
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!

    
    @IBAction func buttonTapped(sender: UIButton){
        
        if clockRunning == false {
            startTimer()
            colourArray
            clockRunning = true
        }
        
        
        self.scoreLabel.text = "\(score)";
        
        
        
        
        if mainButton.isEnabled == true {
            print(score += 1)
    
        }
    }
    
    func startTimer() {
        
        var _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    
    }
    
    func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
            self.timeLabel.text = "\(counter)";
            
            if counter == 0 {
                
                restartGame()
                
                
            }
        }
        
            
        }
    
  //  func endedTimer() {
  //      mainButton.isEnabled = false
        
  //  }
    
    func restartGame(){
        view.backgroundColor = UIColor.blue
        showAlert()
        counter = 0
        score = 0
        
        
    
    }

    
    @IBAction func moveButton(button: UIButton) {
        // Find the button's width and height
        let buttonWidth = button.frame.width
        let buttonHeight = button.frame.height
        
        // Find the width and height of the enclosing view
        let viewWidth = button.superview!.bounds.width
        let viewHeight = button.superview!.bounds.height
        
        // Compute width and height of the area to contain the button's center
        let xwidth = viewWidth - buttonWidth
        let yheight = viewHeight - buttonHeight
        
        // Generate a random x and y offset
        let xoffset = CGFloat(arc4random_uniform(UInt32(xwidth)))
        let yoffset = CGFloat(arc4random_uniform(UInt32(yheight)))
        
        // Offset the button's center by the random offsets.
        button.center.x = xoffset + buttonWidth / 2
        button.center.y = yoffset + buttonHeight / 2
    }
    
    
    
    
    
        func showAlert() {
            let alertController = UIAlertController(title: "Game over!", message:
                "Your score was \(self.score)", preferredStyle: UIAlertControllerStyle.actionSheet)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: { action in self.restartGame() }))
            
            present(alertController, animated: true, completion: nil)
    }
    
    
    let colourArray = [UIColor.blue, UIColor.red, UIColor.brown, UIColor.yellow, UIColor.black, UIColor.orange, UIColor.cyan, UIColor.darkGray, UIColor.gray, UIColor.green]
    @IBAction func backgroundTap(sender: UIButton){
        view.backgroundColor = colourArray[Int(arc4random_uniform(10))]
    }
    }







// while clockRunning == false {


//     return
// }
//  clockRunning == true


//sender.isEnabled = false
