//
//  SearchViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 9/26/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var Search: UISearchBar!
    
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    var filteredData: [String]!
    var searchController = UISearchController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Search.delegate = self
        filteredData = data
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.sizeToFit()
        TableView.tableHeaderView = searchController.searchBar
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return filteredData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        filteredData = searchText.isEmpty ? data : data.filter({
            (dataString : String) -> Bool in
            return dataString.range(of: searchText, options: .caseInsensitive) != nil
        })
        TableView.reloadData()
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
