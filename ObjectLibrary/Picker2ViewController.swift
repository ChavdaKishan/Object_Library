//
//  Picker2ViewController.swift
//  ObjectLibrary
//
//  Created by iFlame on 9/22/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class Picker2ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    @IBOutlet weak var FullNameTxt: UITextField!
    @IBOutlet weak var BirthDateTxt: UITextField!
    @IBOutlet weak var StatesTxt: UITextField!
    @IBOutlet weak var ImageProfile: UIImageView!
    
    // MARK : - Date Picker
    let dtPicker : UIDatePicker = UIDatePicker()
    
    // MARK : - Picker
    let arrStates = ["Gujarat","Maharastra","Rajasthan","Odisha","Bihar","Karnataka","Punjab","Utter Pradesh","Madhya Pradesh"]
    var pickerView = UIPickerView()
    var currentSelectedState : Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        StatesTxt.delegate = self
        self.datePicker()
    }
    
    
    // MARK : - PickerView DataSource & Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrStates.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return arrStates[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        currentSelectedState = row
    }
    
    
    // MARK : - TextField Delegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == StatesTxt
        {
            pickerStates(textfield: textField)
        }
    }
    
    
    // MARK : - UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let pickerImae = info[UIImagePickerControllerOriginalImage] as! UIImage?
        {
            let newpath : URL?
            do
            {
                let imagePath = FileManager.default.urls(for: FileManager.SearchPathDirectory.desktopDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)
                let documentDir = imagePath[0]
                newpath = documentDir.appendingPathComponent("ProfilePic.jpg")
                let imageData = UIImageJPEGRepresentation(pickerImae, 0.8)
                print(newpath?.path ?? "Optional")
                try imageData?.write(to: newpath!)
            }
            catch
            {
                print(error)
            }
            self.ImageProfile.image = UIImage(contentsOfFile: (newpath?.path)!)
        }
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // MARK : - Upload Photo
    @IBAction func BtnClick(_ sender: Any)
    {
        let alert = UIAlertController(title: "User Info", message: "Please Select Any Optin", preferredStyle: .actionSheet)
        let actionGallery = UIAlertAction(title: "Gallery", style: .default, handler: {
            action in
            self.openGallery()
        })
        let actionCamera = UIAlertAction(title: "Camera", style: .default, handler: {
            action in
            self.openCamera()
        })
        let actionCancel = UIAlertAction(title: "Cancel", style: .default, handler: {
            action in
            self.dismiss(animated: true, completion: nil)
        })
        alert.addAction(actionGallery)
        alert.addAction(actionCamera)
        alert.addAction(actionCancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    // MARK : - Created Function
    func pickerStates(textfield: UITextField)
    {
        pickerView = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        if currentSelectedState != nil
        {
            pickerView.selectRow(currentSelectedState!, inComponent: 0, animated: true)
        }
        else
        {
            currentSelectedState = 0
        }
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(stateSelectedDoneAction))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: self, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(stateCancellation))
        
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: true)
        
        StatesTxt.inputView = pickerView
        StatesTxt.inputAccessoryView = toolbar
    }
    
    func stateSelectedDoneAction()
    {
        StatesTxt.resignFirstResponder()
        StatesTxt.text = arrStates[currentSelectedState!]
    }
    func stateCancellation()
    {
        StatesTxt.resignFirstResponder()
    }
    
    func datePicker()
    {
        dtPicker.datePickerMode = .date
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dtPickerDoneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(dtPickerCancelClick))
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: true)
        
        BirthDateTxt.inputView = dtPicker
        BirthDateTxt.inputAccessoryView = toolbar
    }
    func dtPickerDoneClick()
    {
        let format = DateFormatter()
        format.dateFormat = "dd/MM/yyyy"
        BirthDateTxt.text = format.string(from: dtPicker.date)
        self.view.endEditing(true)
    }
    func dtPickerCancelClick()
    {
        self.view.endEditing(true)
    }
    func openGallery()
    {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .photoLibrary
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        }
    }
    func openCamera()
    {
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .camera
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
