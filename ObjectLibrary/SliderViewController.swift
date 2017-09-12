//
//  SliderViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/14/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController
{
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var Label2: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SliderAction(_ sender: Any)
    {
        /*let Font_Size = CGFloat(Slider.value)
        Label.font = UIFont(name: Label.font.fontName, size: Font_Size)
        Label.sizeToFit()
        
        Label2.text = String(Slider.value)
 */
        let font = CGFloat(Slider.value)
        Label.font = UIFont(name: Label.font.fontName, size: font)
        Label.sizeToFit()
        
        Label2.text = String(Slider.value)
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
