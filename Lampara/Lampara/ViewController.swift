//
//  ViewController.swift
//  Lampara
//
//  Created by Yocoyani Pérez on 9/3/19.
//  Copyright © 2019 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = false
    
    @IBOutlet weak var lightButton: UIButton!
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
        lightButton.setTitle(lightOn ? "On" : "Off", for: .normal)
        lightButton.setTitleColor(lightOn ? .black : .white, for: .normal)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            updateUI()
    }


}

