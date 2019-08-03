//
//  ViewController.swift
//  7
//
//  Created by Adeena Ansari on 27/7/19.
//  Copyright © 2019 Adeena Ansari. All rights reserved.
//

import UIKit

class clickerViewController: UIViewController {
    @IBOutlet weak var Label: UILabel!
    var counter = 0
    
    var time: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
            self.time += 0.1
        }
        
    }
    @IBAction func tapped(_ sender: Any) {
        counter += 1
        Label.text = "\(counter)"
        if counter == 30{
            print ("Maximum reached in \(time) seconds")
            performSegue(withIdentifier: "exitClicker", sender: self)
        }
        
        
    }
    
   
}

