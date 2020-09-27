//
//  ViewController.swift
//  LocationPickerJohnG
//
//  Created by John Grasser on 9/26/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import UIKit

//class ViewController: UIViewController {
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    

    

    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    


    @IBOutlet var locationSelector: UIPickerView!
    

    let locations = ["Chicago","New York","Los Angeles","New Orleans", "Detroit"]
    let dateFormatter: DateFormatter = DateFormatter()
    var totalrow: Int = 0
    //var pickerData:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationSelector.delegate = self
        self.locationSelector.dataSource = self
                dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }

        func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        //totalrow = row
        //totalrow = row
        return locations[row]
    }
    
        
    
    

    func ShowAlert(dateTime : String)
    {
        let alert = UIAlertController(title: "Select Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {action -> Void in
            
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }

    
    
    @IBAction func getCurrentDateTime(_ sender: UIButton) {
        let pickerIndex = locationSelector.selectedRow(inComponent: 0)
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        
       var selectedInfo = "You are traveling to \(locations[pickerIndex]) on \(selectedDate)"
        ShowAlert(dateTime: selectedInfo)//dateTime: selectedDate)
    }
    
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate: String = dateFormatter.string(from: sender.date)
        ShowAlert(dateTime: selectedDate)
    }}

