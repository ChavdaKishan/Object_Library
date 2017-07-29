//
//  ProgressViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/29/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController
{

    @IBOutlet weak var Progress: UIProgressView!
    
    var timer = Timer()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(ProgressViewController.go), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    func go()
    {
        Progress.progress += 0.005
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
