//
//  GameViewController.swift
//  Truth or Dare
//
//  Created by Michael Cheung.
//  Copyright © 2020 Michael Cheung. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // when you click the play button
    // go to the player page
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "player_vc") as? PlayerViewController else {
            return
        }
        present(vc, animated: true)
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
