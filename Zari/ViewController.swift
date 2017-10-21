//
//  ViewController.swift
//  Zari
//
//  Created by Rinor Bytyci on 10/13/17.
//  Copyright © 2017 Rinor Bytyci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFillo: UILabel!
    @IBOutlet weak var numriIZgjedhur: UITextField!
    @IBOutlet weak var fotoja: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblFillo.text = "Kliko Luaj! per te filluar."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func luaj(_ sender: Any) {
        let numriIPerdoruesit:Int = Int(numriIZgjedhur.text!)!
        let numriRandom:Int = Int(arc4random_uniform(6))
        
        if numriIPerdoruesit < 1 || numriIPerdoruesit > 6{
            lblFillo.text = "Shkruaj nje numer nga 1 deri ne 6"
        }else{
            
            if numriIPerdoruesit == numriRandom{
                lblFillo.text = "E keni qelluar"
                fotoja.image = UIImage.init(named: "sakte")
                
            } else {
                lblFillo.text = "Na vjen keq, provo perseri"
                fotoja.image = UIImage.init(named: "gabim")
            }
            
        }
        
    }
    
}

