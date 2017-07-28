//
//  SegmentViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 7/25/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var Segment: UISegmentedControl!
    @IBOutlet weak var TableView: UITableView!
    
    let privatelist : [String] = ["Private Item 1","Private Item 2","Private Item 3"]
    let mutuallist : [String] = ["Mutual Item 1","Mutual Item 2","Mutual Item 3","Mutual Item 4"]
    let alllist : [String] = ["Public Item 1","Public Item 2","Public Item 3","Public Item 4","Public Item 5"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var returnvalue = 0
        switch(Segment.selectedSegmentIndex)
        {
        case 0:
            returnvalue = privatelist.count
            break
        case 1:
            returnvalue = mutuallist.count
            break
        case 2:
            returnvalue = alllist.count
            break
        default:
            break
        }
        return returnvalue
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        switch(Segment.selectedSegmentIndex)
        {
        case 0:
            cell.textLabel?.text = privatelist[indexPath.row]
            break
        case 1:
            cell.textLabel?.text = mutuallist[indexPath.row]
            break
        case 2:
            cell.textLabel?.text = alllist[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    @IBAction func SegmentClick(_ sender: Any)
    {
        TableView.reloadData()
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
