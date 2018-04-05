//
//  ViewController.swift
//  Timer
//
//  Created by D7703_26 on 2018. 4. 5..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var timer = Timer()
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var Images: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = String(counter)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func start(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
    }
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        Images.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

