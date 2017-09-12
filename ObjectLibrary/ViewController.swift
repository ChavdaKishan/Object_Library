//
//  ViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/14/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func SliderClick(_ sender: Any)
    {
        let slider1 = self.storyboard?.instantiateViewController(withIdentifier: "SliderView") as! SliderViewController
        self.navigationController?.pushViewController(slider1, animated: true)
    }
    
    @IBAction func AlertClick(_ sender: Any)
    {
        let alert1 = self.storyboard?.instantiateViewController(withIdentifier: "AlertView") as! AlertViewController
        self.navigationController?.pushViewController(alert1, animated: true)
    }
    
    @IBAction func SwitchClick(_ sender: Any)
    {
        let switchbtn = self.storyboard?.instantiateViewController(withIdentifier: "SwitchView") as! SwitchViewController
        self.navigationController?.pushViewController(switchbtn, animated: true)
    }
    
    @IBAction func PopUpClick(_ sender: Any)
    {
        let popup1 = self.storyboard?.instantiateViewController(withIdentifier: "PopUpView") as! PopUpViewController
        self.navigationController?.pushViewController(popup1, animated: true)
    }
    
    @IBAction func SegmentClick(_ sender: Any)
    {
        let segmentbtn = self.storyboard?.instantiateViewController(withIdentifier: "SegmentView") as! SegmentViewController
        self.navigationController?.pushViewController(segmentbtn, animated: true)
    }
    
    @IBAction func ScrollClick(_ sender: Any)
    {
        let scrollbtn = self.storyboard?.instantiateViewController(withIdentifier: "ScrollView") as! ScrollViewController
        self.navigationController?.pushViewController(scrollbtn, animated: true)
    }
    
    @IBAction func CollectioClick(_ sender: Any)
    {
        let collectionbtn = self.storyboard?.instantiateViewController(withIdentifier: "CollectionView") as! CollectionViewController
        self.navigationController?.pushViewController(collectionbtn, animated: true)
    }
    
    @IBAction func StepperClick(_ sender: Any)
    {
        let stepperbtn = self.storyboard?.instantiateViewController(withIdentifier: "StepperView") as! StepperViewController
        self.navigationController?.pushViewController(stepperbtn, animated: true)
    }
    
    @IBAction func ProgressClick(_ sender: Any)
    {
        let progressbtn = self.storyboard?.instantiateViewController(withIdentifier: "ProgressView") as! ProgressViewController
        self.navigationController?.pushViewController(progressbtn, animated: true)
    }
    
    @IBAction func IndicatorClick(_ sender: Any)
    {
        let indicatorbtn = self.storyboard?.instantiateViewController(withIdentifier: "IndicatorView") as! IndicatorViewController
        self.navigationController?.pushViewController(indicatorbtn, animated: true)
    }
    
    @IBAction func ScrollWithPageClick(_ sender: Any)
    {
        let ScrollPageBtn = self.storyboard?.instantiateViewController(withIdentifier: "ScrollPageView") as! ScrollWithPageViewController
        self.navigationController?.pushViewController(ScrollPageBtn, animated: true)
    }
    
    @IBAction func ContainerBtn(_ sender: Any)
    {
        let containerbtn = self.storyboard?.instantiateViewController(withIdentifier: "ContainerView") as! ContainerViewController
        self.navigationController?.pushViewController(containerbtn, animated: true)
    }
    
    @IBAction func PickerViewClick(_ sender: Any)
    {
        let pickerbtn = self.storyboard?.instantiateViewController(withIdentifier: "PickerView") as! PickerViewController
        self.navigationController?.pushViewController(pickerbtn, animated: true)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
