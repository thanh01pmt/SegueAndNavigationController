//
//  VCYellow.swift
//  SegueAndNavigationController
//
//  Created by Tony Pham on 4/9/24.
//

import UIKit

class VCYellow: UIViewController {
    
    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var btnGoToGreen: UIButton!
    @IBOutlet weak var btnGoToBlue: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    
    @IBAction func inputData(_ sender: UITextField) {
    }
    
    
    @IBAction func goToBlueVC(_ sender: UIButton) {
        performSegue(withIdentifier: "toBlueVC", sender: self)
    }
    
    @IBAction func goToGreenVC(_ sender: UIButton) {
        performSegue(withIdentifier: "toGreenVC", sender: self)
    }
    
    @IBAction func exit(_ sender: UIButton) {
    }
    
    @IBAction func unwindToYellowVC(unwindSegue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCGreen {
            let destinationTitle = destination.navigationItem.title ?? "N/A"
            print("Destination Title: \(destinationTitle)")
            
            destination.navigationItem.title = txtInput.text!
            //The below code will not work because lblData does not exist at this moment.
            destination.lblData?.text = txtInput.text
            //Check the below code and VCBlue.swift for the solution.
        }
        
        if let destination = segue.destination as? VCBlue {
            let destinationTitle = destination.navigationItem.title ?? "N/A"
            print("Destination Title: \(destinationTitle)")
            
            destination.navigationItem.title = txtInput.text!
            //The solution - Pass data to a custom attribute (a variable) of the destination
            destination.passedData = txtInput.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
