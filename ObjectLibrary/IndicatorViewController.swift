//
//  IndicatorViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/31/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class IndicatorViewController: UIViewController
{
    var ActivityIndicator : UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var IndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func StartClick(_ sender: Any)
    {
        ActivityIndicator.center = self.FirstView.center
        ActivityIndicator.hidesWhenStopped = true
        ActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        view.addSubview(ActivityIndicator)
        
        ActivityIndicator.startAnimating()
    }
    @IBAction func StopClick(_ sender: Any)
    {
        ActivityIndicator.stopAnimating()
    }
    
    @IBAction func StartAnimatingClick(_ sender: Any)
    {
        IndicatorView.startAnimating()
    }
    @IBAction func StopAnimatingClick(_ sender: Any)
    {
        IndicatorView.stopAnimating()
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
