//
//  SwitchViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/17/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController
{

    @IBOutlet weak var YesPizza: UILabel!
    @IBOutlet weak var YesSandwitch: UILabel!
    @IBOutlet weak var YesDhosa: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwitchPizza(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            YesPizza.text = "Yes! I Want Pizza!"
        }
        else
        {
            YesPizza.text = "No! I Don't Want Pizza!"
        }
    }

    @IBAction func SwitchSandwitch(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            YesSandwitch.text = "Yes! I Want Sandwitch"
        }
        else
        {
            YesSandwitch.text = "No! I Don't Want Sandwitch"
        }
    }
    
    @IBAction func SwitchDhosa(_ sender: UISwitch)
    {
        if (sender.isOn == true)
        {
            YesDhosa.text = "Yes! I Want Dhosa"
        }
        else
        {
            YesDhosa.text = "No! I Don't Want Dhosa"
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
