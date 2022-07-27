//
//  DoorViewController.swift
//  ClassDemo7
//
//  Created by Joe Miller on 7/21/22.
//

import UIKit

class DoorViewController: UIViewController {
    @IBOutlet weak var leftDoor: UIImageView!
    @IBOutlet weak var rightDoor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UIView.animate(
            withDuration: 0.1,
            delay: 0,
            options: .curveLinear,
            animations: {
                self.rightDoor.transform = self.rightDoor.transform.rotated(by: CGFloat(Double.pi))
            }
            
        )
        UIView.animate(
            withDuration: 0.1,
            delay: 0,
            options: .curveLinear,
            animations: {
                self.rightDoor.transform = self.rightDoor.transform.rotated(by: CGFloat(Double.pi))
            }
            
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(
            withDuration: 0.7,
            delay: 0.5,
            options: .curveEaseOut,
            animations: {
                self.leftDoor.frame.origin.x -= self.leftDoor.frame.size.width
                self.rightDoor.frame.origin.x += self.rightDoor.frame.size.width
            })
    }
    @IBAction func onCloseButtonPressed(_ sender: Any) {
        UIView.animate(
            withDuration: 0.7,
            delay: 0.0,
            options: .curveEaseOut,
            animations: {
                self.leftDoor.frame.origin.x += self.leftDoor.frame.size.width
                self.rightDoor.frame.origin.x -= self.rightDoor.frame.size.width
            })
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
