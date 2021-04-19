//
//  ViewController.swift
//  demo
//
//  Created by Rakshit Tanti on 19/04/21.
//

import UIKit

class ViewController: UIViewController {

    var control: UISegmentedControl?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let segmentItems = ["Login", "Signup"]
        control = UISegmentedControl(items: segmentItems)
        control!.addTarget(self, action: #selector(segmentControl), for: .valueChanged)
        control!.frame = CGRect(x: 10, y: 250, width: (self.view.frame.width - 20), height: 35)
        control!.layer.cornerRadius = 5.0
        self.navigationItem.titleView = control
        control!.selectedSegmentIndex = 0
    }

    @objc func segmentControl() {
        print("segmentControl")
    }

    @IBAction func buttonTapped(_ sender: Any) {
        var newIndex = control!.selectedSegmentIndex + 1
        if newIndex > 1 {
            newIndex = 0
        }
        control!.selectedSegmentIndex = newIndex
    }

}

