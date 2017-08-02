//
//  ScrollWithPageViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 8/2/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ScrollWithPageViewController: UIViewController,UIScrollViewDelegate
{
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var PageControll: UIPageControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        
        let slideshow : [Slide] = CreatSlide()
        SetUpSlideScrollView(slides: slideshow)
        PageControll.numberOfPages = slideshow.count
        PageControll.currentPage = 0
        view.bringSubview(toFront: PageControll)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func CreatSlide() -> [Slide]
    {
        let slide1 : Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.Label.text = "Slide1"
        let slide2 : Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.Label.text = "Slide2"
        return [slide1,slide2]
    }
    
    func SetUpSlideScrollView(slides:[Slide])
    {
        ScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        ScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        
        ScrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count
        {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            ScrollView.addSubview(slides[i])
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        PageControll.currentPage = Int(pageIndex)
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
