//
//  ViewController.swift
//  WhatWiilWeather
//
//  Created by Сергей Голенко on 22.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let urlWeather = "https://www.weather-forecast.com/locations/London/forecasts/latest"
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func getWeather(_ sender: Any) {
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let url = URL(string: urlWeather)
        
        let requesr = NSMutableURLRequest(url: url!)
        
        let task = URLSession.shared.dataTask(with: requesr as URLRequest) {
            data,response,error in
             
            if let error = error {
                print(error)
            } else {
                if let unrappedData = data {
                    let dataString = NSString(data: unrappedData, encoding:String.Encoding.utf8.rawValue )
                    
                    print(dataString)
                    
                }
                
            }
            
            
             
        }
        task.resume()
        



    }

    

}

