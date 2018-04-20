//
//  ViewController.swift
//  ImageChange
//
//  Created by terrence on 2018/4/18.
//  Copyright © 2018年 terrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redValue = 255
    var greenValue = 255
    var blueValue = 255

    @IBOutlet weak var snorlaxImage: UIImageView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    @IBAction func blueSlider(_ sender: UISlider) {
        blueValue = Int(sender.value)
        blueText.text = "\(blueValue)"
        changSnorlaxColor()
    }
    @IBAction func redSlider(_ sender: UISlider) {
        redValue = Int(sender.value)
        redText.text = "\(redValue)"
        changSnorlaxColor()
    }
    @IBAction func greenSlider(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenText.text = "\(greenValue)"
        changSnorlaxColor()
    }
    
    @IBAction func changeSwitch(_ sender: UISwitch) {
        if sender == redSwitch{
            if redSwitch.isOn == false{
                redSlider.isEnabled = false
            }else{
                redSlider.isEnabled = true
            }
        }
        else if sender == greenSwitch{
            if greenSwitch.isOn == false{
                greenSlider.isEnabled = false
            }else{
                greenSlider.isEnabled = true
            }
        }
        else if sender == blueSwitch{
            if blueSwitch.isOn == false{
                blueSlider.isEnabled = false
            }else{
                blueSlider.isEnabled = true
            }
            
        }
    }
    func changSnorlaxColor(){
        snorlaxImage.backgroundColor = UIColor(red: CGFloat(redValue) / 255, green: CGFloat(greenValue) / 255, blue: CGFloat(blueValue) / 255, alpha: 1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

