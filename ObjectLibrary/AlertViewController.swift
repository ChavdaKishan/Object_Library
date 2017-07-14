//
//  AlertViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/14/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AlertViewClick(_ sender: Any)
    {
        let alert = UIAlertController(title: "Colors", message: "Select Your Favorite Color", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Red", style: UIAlertActionStyle.default, handler: {
            void in
            self.RedColor()
        }))
        alert.addAction(UIAlertAction(title: "Green", style: UIAlertActionStyle.default, handler: {
            void in
            self.GreenColor()
        }))
        alert.addAction(UIAlertAction(title: "Blue", style: UIAlertActionStyle.default, handler: {
            void in
            self.view.backgroundColor = UIColor.blue
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
            void in
            self.view.backgroundColor = UIColor.clear
        }))
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func AlertActionSheetClick(_ sender: Any)
    {
        let alertsheet = UIAlertController(title: "Colors", message: "Select Your Favorite Color", preferredStyle: .actionSheet)
        alertsheet.addAction(UIAlertAction(title: "Red", style: UIAlertActionStyle.default, handler: {
            void in
            self.RedColor()
        }))
        alertsheet.addAction(UIAlertAction(title: "Green", style: UIAlertActionStyle.default, handler: {
            void in
            self.GreenColor()
        }))
        alertsheet.addAction(UIAlertAction(title: "Blue", style: UIAlertActionStyle.default, handler: {
            void in
            self.view.backgroundColor = UIColor.blue
        }))
        alertsheet.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
            Void in
            self.view.backgroundColor = UIColor.clear
        }))
        self.present(alertsheet, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func RedColor()
    {
        self.view.backgroundColor = UIColor.red
    }
    func GreenColor()
    {
        self.view.backgroundColor = UIColor.green
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
