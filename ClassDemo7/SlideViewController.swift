//
//  SlideViewController.swift
//  ClassDemo7
//
//  Created by Joe Miller on 7/20/22.
//

import UIKit

class SlideViewController: UIViewController {
    @IBOutlet weak var labelMayTheForce: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonSlideInFromRight(_ sender: Any) {
        // Starting center value
        self.labelMayTheForce.center.x = self.view.center.x + self.view.bounds.width
        
        UIView.animate(
            withDuration: 3.0,
            animations: {
                self.labelMayTheForce.center.x -= self.view.bounds.width
            }
        )
    }
    @IBAction func onButtonSlideInFromLeft(_ sender: Any) {
        // Starting center value
        self.labelMayTheForce.center.x = self.view.center.x - self.view.bounds.width
        
        UIView.animate(
            withDuration: 3.0,
            animations: {
                self.labelMayTheForce.center.x += self.view.bounds.width
            }
        )
    }
    @IBAction func onButtonSlideOutToRight(_ sender: Any) {
        // Starting center value
        self.labelMayTheForce.center.x = self.view.center.x
        UIView.animate(
            withDuration: 3.0,
            animations: {
                self.labelMayTheForce.center.x = self.view.center.x + self.view.bounds.width
            }
        )
    }
    
    @IBAction func onButtonSlideOutToLeft(_ sender: Any) {
        //Starting center vallue
        self.labelMayTheForce.center.x = self.view.center.x
        UIView.animate(
            withDuration: 3.0,
            animations: {
                self.labelMayTheForce.center.x = self.view.center.x - self.view.bounds.width
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
