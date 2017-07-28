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
    
    @IBAction func PopUpClick(_ sender: Any)
    {
        let popup1 = self.storyboard?.instantiateViewController(withIdentifier: "PopUpView") as! PopUpViewController
        self.navigationController?.pushViewController(popup1, animated: true)
    }
    
    @IBAction func SwitchClick(_ sender: Any)
    {
        let switchbtn = self.storyboard?.instantiateViewController(withIdentifier: "SwitchView") as! SwitchViewController
        self.navigationController?.pushViewController(switchbtn, animated: true)
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

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
