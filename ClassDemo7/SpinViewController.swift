//
//  SpinViewController.swift
//  ClassDemo7
//
//  Created by Joe Miller on 7/21/22.
//

import UIKit

class SpinViewController: UIViewController {
    @IBOutlet weak var labelProsper: UILabel!
    @IBOutlet weak var labelDuration: UILabel!
    @IBOutlet weak var textFieldDuration: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func onButtonStartSpin(_ sender: Any) {
        // Starting transform value
        
        var durationValue = 3.0  // Default duration
        if let duration = textFieldDuration.text {
            if let durationFloat = Double(duration) {
                durationValue = durationFloat
            }
        }
        
        UIView.animate(
            withDuration: durationValue,
            animations: {
                // 180 degree rotation
                self.labelProsper.transform =
                    self.labelProsper.transform.rotated(by: CGFloat(Double.pi))
                }
        )
        UIView.animate(
            withDuration: durationValue,
            animations: {
                // 180 degree rotation
                self.labelProsper.transform =
                    self.labelProsper.transform.rotated(by: CGFloat(Double.pi))
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
