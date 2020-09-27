//
//  locationPicker.swift
//  LocationPickerJohnG
//
//  Created by John Grasser on 9/26/20.
//  Copyright © 2020 John Grasser. All rights reserved.
//

import Foundation

import UIKit

import AudioToolbox

class CustomPickerViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        images = [
          UIImage(named: "seven")!,
          UIImage(named: "bar")!,
          UIImage(named: "crown")!,
          UIImage(named: "cherry")!,
          UIImage(named: "lemon")!,
          UIImage(named: "apple")!
        ]
        winLabel.text = " "
        arc4random_stir()
    }
