//
//  ViewController.swift
//  playRoshambo
//
//  Created by Roman Ustiantcev on 25/01/16.
//  Copyright © 2016 Roman Ustiantcev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func choiceScissors(sender: UIButton) {
        
        let resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        resultViewController.playerValue = "scissors"
        
        presentViewController(resultViewController, animated: true, completion: nil)
    }
    
    @IBAction func choicePaper(sender: UIButton) {
        
        let resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        resultViewController.playerValue = "paper"
        
        presentViewController(resultViewController, animated: true, completion: nil)
    }
    
    @IBAction func choiceRock(sender: UIButton) {
        
        let resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        
        resultViewController.playerValue = "rock"
        
        presentViewController(resultViewController, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}