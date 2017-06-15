//
//  GameViewController.swift
//  Guess the number
//
//  Created by Victor on 16/06/2017.
//  Copyright © 2017 MoXyLe. All rights reserved.
//

import UIKit
import Foundation

class GameViewController: UIViewController {
    
    var guessedNumber = arc4random_uniform(9) + 1
    var attempts = 0
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var attemptsCount: UILabel!
    
    @IBOutlet weak var theNumber: UIView!
    
    @IBAction func guess(_ sender: UIButton) {
        attempts += 1
        if textField.text == String(guessedNumber) {
            let alert = UIAlertController(title: "You win!", message: "You made \(attempts) attempts", preferredStyle: UIAlertControllerStyle.alert)
            let alertAction = UIAlertAction(title: "Restart", style: UIAlertActionStyle.default, handler: nil)
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
            guessedNumber = arc4random_uniform(9) + 1
            attempts = 0
        }
        attemptsCount.text = "Attempts: \(attempts)"
        textField.text = nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        textField.resignFirstResponder()    // Скрывает клаву при клике на пустое место
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
