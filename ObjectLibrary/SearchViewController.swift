//
//  SearchViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 9/26/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func SearchClick(_ sender: Any)
    {
        let result = UITableViewController(style: .plain)
        let search = UISearchController(searchResultsController: result)
        self.present(search, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
