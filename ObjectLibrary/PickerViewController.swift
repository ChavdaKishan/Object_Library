//
//  PickerViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 8/28/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    var name:String = ""
    var day:String = ""
    var month:String = ""
    var time:String = ""
    
    @IBOutlet weak var Nametxt: UITextField!
    @IBOutlet weak var Daytxt: UITextField!
    @IBOutlet weak var Monthtxt: UITextField!
    @IBOutlet weak var Timetxt: UITextField!
    
    var arr = [["Montu","Chintan","Harshad","Sanjay","Rohit","Shailesh","Kishan"],["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"],               ["Jan","Feb","Mar","Apr","May","June","July","Aug","Sep","Oct","Nov","Des"],["1:00","1:30","2:00","2:30","3:00","3:30","4:00","4:30","5:00","5:30","6:00","6:30","7:00","7:30","8:00","8:30","9:00","9:30","10:00","10:30","11:00","11:30","12:00","12:30","13:00","13:30","14:00","14:30","15:00","15:30","16:00","16:30","17:00","17:30","18:00","18:30","19:00","19:30","20:00","20:30","21:00","21:30","22:00","22:30","23:00","23:30","24:00"]]
    
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arr[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return arr[component][row]
    }
    /*
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        
    }
     */
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        switch (component)
        {
            case 0:
                name = arr[component][row]
                Nametxt.text = name
                break;
            case 1:
                day = arr[component][row]
                Daytxt.text = day
                break;
            case 2:
                month = arr[component][row]
                Monthtxt.text = month
                break;
            case 3:
                time = arr[component][row]
                Timetxt.text = time
                break;
            default:
                break;
        }
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
