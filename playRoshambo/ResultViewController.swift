//
//  ResultViewController.swift
//  playRoshambo
//
//  Created by Roman Ustiantcev on 25/01/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import UIKit
import Foundation

class ResultViewController: UIViewController {
    
    var playerValue: String?
    var opponentValue: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultView: UIImageView!
    
    override func viewWillAppear(animated: Bool){
        
        self.resultView.alpha = 0
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.resultView.alpha = 1
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var oValue = randomValue()
        
        // Choices + results (paper)
        
        if (playerValue == "paper" && oValue == 1 ){
            // opponent value == paper
            self.resultView.image = UIImage(named: "isATie")
            self.resultLabel.text = "It is a Tie!"
            
        } else if (playerValue == "paper" && oValue == 2 ) {
            // opponent value == rock
            self.resultView.image = UIImage(named: "paperWinsRock")
            self.resultLabel.text = "Paper wins Rock!"
            
        } else if (playerValue == "paper" && oValue == 3 ) {
            // opponent value == scissors
            self.resultView.image = UIImage(named: "scissorsWinsPaper")
            self.resultLabel.text = "Scissors wins paper!"
        }
        
        // Choices + results (rock)
        
        if (playerValue == "rock" && oValue == 2) {
            // opponent value == rock
            self.resultView.image = UIImage(named: "isATie")
            self.resultLabel.text = "It is a Tie!"
            
        } else if (playerValue == "rock" && oValue == 1 ) {
            // opponent value == paper
            self.resultView.image = UIImage(named: "paperWinsRock")
            self.resultLabel.text = "Paper wins rock!"
            
        } else if (playerValue == "rock" && oValue == 3 ) {
            // opponent value == scissors
            self.resultView.image = UIImage(named: "rockWinsScissors")
            self.resultLabel.text = "Rock wins Scissors"
        }
        
        // Choices + results (scissors)
        
        if (playerValue == "scissors" && oValue == 3){
            // opponent value == scissors
            self.resultView.image = UIImage(named: "isATie")
            self.resultLabel.text = "It is a Tie!"
            
        } else if (playerValue == "scissors" && oValue == 2) {
            // opponent value == rock
            self.resultView.image = UIImage(named: "rockWinsScissors")
            self.resultLabel.text = "Rock wins Scissors!"
            
        } else if (playerValue == "scissors" && oValue == 1) {
            // opponent value == paper
            self.resultView.image = UIImage(named: "scissorsWinsPaper")
            self.resultLabel.text = "Scissors wins Paper!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    


}

