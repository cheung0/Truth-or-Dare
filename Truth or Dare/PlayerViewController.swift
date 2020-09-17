//
//  PlayerViewController.swift
//  Truth or Dare
//
//  Created by Michael Cheung.
//  Copyright © 2020 Michael Cheung. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // when you click the two player button
    // go to the page with two players
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "kids_vc") as? KidsViewController else {
            return
        }
        present(vc, animated: true)
    }
    
    // TODO
    // when you click the three player button
    // go to the page with three players
    
    // TODO
    // when you click the four player button
    // go to the page with four players

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
