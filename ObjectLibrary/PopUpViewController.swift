//
//  PopUpViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/14/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController
{

    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var PopupView: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        Btn1.layer.borderWidth = 1
        Btn1.layer.borderColor = UIColor.black.cgColor
        Btn2.layer.borderWidth = 1
        Btn2.layer.borderColor = UIColor.black.cgColor
        Btn3.layer.borderWidth = 1
        Btn3.layer.borderColor = UIColor.black.cgColor
        
        PopupView.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PopUpBtnClick(_ sender: Any)
    {
        if PopupView.isHidden == true
        {
            PopupView.isHidden = false
        }
        else
        {
            PopupView.isHidden = true
        }
    }
    
    @IBAction func Facebook(_ sender: Any)
    {
        let fbvc = self.storyboard?.instantiateViewController(withIdentifier: "WebView") as! WebViewViewController
        
        self.present(fbvc, animated: true, completion: nil)
    }
    
    @IBAction func Google(_ sender: Any)
    {
        
    }
    
    @IBAction func Gmail(_ sender: Any)
    {
        
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
