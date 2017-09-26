//
//  GestureViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 9/26/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // MARK : - Gesture
    @IBAction func TapGesture(_ sender: UITapGestureRecognizer)
    {
        print("Image Double Taped")
    }
    
    @IBAction func PinchGesture(_ sender: UIPinchGestureRecognizer)
    {
        if let view = sender.view
        {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1.0
        }
    }
    
    @IBAction func RotationGesture(_ sender: UIRotationGestureRecognizer)
    {
        if let view = sender.view
        {
            view.transform = view.transform.rotated(by: sender.rotation)
        }
    }
    
    @IBAction func SwipeGesture(_ sender: UISwipeGestureRecognizer)
    {
        print("Swift Gesture")
    }
    
    @IBAction func PanGesture(_ sender: UIPanGestureRecognizer)
    {
        let translate = sender.translation(in: view)
        sender.setTranslation(.zero, in: view)
        let myimage = sender.view as! UIImageView
        myimage.center = CGPoint(x: myimage.center.x + translate.x, y: myimage.center.y + translate.y)
    }
    
    @IBAction func ScreenEdgePanGesture(_ sender: UIScreenEdgePanGestureRecognizer)
    {
        let translate = sender.translation(in: view)
        sender.setTranslation(.zero, in: view)
        let myimage = sender.view as! UIImageView
        myimage.center = CGPoint(x: myimage.center.x + translate.x, y: myimage.center.y + translate.y)
    }
    
    @IBAction func LongPressGesture(_ sender: UILongPressGestureRecognizer)
    {
        print("Long Pressed")
    }
}
