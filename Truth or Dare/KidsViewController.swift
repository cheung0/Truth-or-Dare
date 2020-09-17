//
//  KidsViewController.swift
//  Truth or Dare
//
//  Created by Mike Zhang on 9/13/20.
//  Copyright © 2020 Michael Cheung. All rights reserved.
//

import UIKit
import Foundation

class KidsViewController: UIViewController {
    
    @IBOutlet weak var truthdare: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var turnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // when you tap the home button
    // go to home page
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "home_vc") as? ViewController else {
            return
        }
        present(vc, animated: true)
    }

    var counterTruth = 0
    var counterDare = 0
    
    // when you tap the truth button
    // generate the next truth
    // changes background color
    @IBAction func didTapButtonTruth() {
        // cycle that goes back to first picture
        if counterTruth == 6 {
            counterTruth = 0
        }
        
        truthdare.image = UIImage(named: "kidstruth\(counterTruth)")
        counterTruth += 1
    }
    
    // when you tap the dare button
    // generate the next dare
    @IBAction func didTapButtonDare() {
        // cycle that goes back to first picture
        if counterDare == 6 {
            counterDare = 0
        }
        
        truthdare.image = UIImage(named: "kidsdare\(counterDare)")
        counterDare += 1
    }
    
    var leftScore = 0
    var rightScore = 0
    var turn = 0
    
    // when you tap forfeit button
    // decrease current player's score by one
    @IBAction func dealForfeited(_ sender: Any) {
        if turn % 2 == 0 {
            leftScore -= 1
            leftScoreLabel.text = String(leftScore)
            turnLabel.text = "Player 2' s Turn"
        }
        else {
            rightScore -= 1
            rightScoreLabel.text = String(rightScore)
            turnLabel.text = "Player 1' s Turn"
        }
        turn += 1
        truthdare.image = UIImage()
    }
    
    // when you tap complete button
    // increase current player's score by one
    @IBAction func dealCompleted(_ sender: Any) {
        if turn % 2 == 0 {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            turnLabel.text = "Player 2' s Turn"
        }
        else {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            turnLabel.text = "Player 1' s Turn"
        }
        turn += 1
        truthdare.image = UIImage()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
