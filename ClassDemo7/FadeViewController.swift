//
//  FadeViewController.swift
//  ClassDemo7
//
//  Created by Joe Miller on 7/20/22.
//

import UIKit

class FadeViewController: UIViewController {
    @IBOutlet weak var bazingaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onButtonFadeIn(_ sender: Any) {
        // Starting alpha value
        self.bazingaLabel.alpha = 0.0
        UIView.animate(
            withDuration: 1.0,
            animations: {
                self.bazingaLabel.alpha = 1.0
            }
        )
        
    }
    
    @IBAction func onButtonFadeOut(_ sender: Any) {
        // Starting alpha value
        self.bazingaLabel.alpha = 1.0
        
        UIView.animate(
            withDuration: 1.0,
            animations: {
            self.bazingaLabel.alpha = 0.0
            }
        )
        
        
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
