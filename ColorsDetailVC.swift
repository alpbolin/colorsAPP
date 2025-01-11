//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Genish  on 10/01/2025.
//

import UIKit

class ColorsDetailVC: UIViewController {
    var color : UIColor?
    var values : [Double] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .cyan
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
