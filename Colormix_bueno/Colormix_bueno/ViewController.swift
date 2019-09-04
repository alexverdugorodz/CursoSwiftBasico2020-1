//
//  ViewController.swift
//  Colormix_bueno
//
//  Created by Daniel Alejandro on 9/3/19.
//  Copyright © 2019 Daniel Alejandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColors()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchChanged(_ sender: UISwitch!) {
        
        updateColors()
        /*if sender.isOn{
            colorView.backgroundColor = .red
        }else{
            colorView.backgroundColor = .black
        }*/
    }
    
    func updateColors(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            red = 1
        }
        if greenSwitch.isOn{
            green = 1
        }
        if blueSwitch.isOn{
            blue = 1
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
}

