//
//  VCBlue.swift
//  SegueAndNavigationController
//
//  Created by Tony Pham on 5/9/24.
//

import UIKit

class VCBlue: UIViewController {

    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var txtInput: UITextField!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnExit: UIButton!
    
    var passedData: String? = ""
    
    @IBAction func inputData(_ sender: UITextField) {
    }
    
    @IBAction func back(_ sender: UIButton) {
    }
    
    @IBAction func next(_ sender: UIButton) {
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        lblData.text = passedData

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
