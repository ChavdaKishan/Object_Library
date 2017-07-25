//
//  WebViewViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/15/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController {

    @IBOutlet weak var UiWebView: UIWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.facebook.com")
        if UIApplication.shared.canOpenURL(url!)
        {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
            //If you want handle the completion block than
            UIApplication.shared.open(url!, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back(_ sender: Any)
    {
        let back = self.storyboard?.instantiateViewController(withIdentifier: "PopUpView") as! PopUpViewController
        
        self.present(back, animated: true, completion: nil)
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
