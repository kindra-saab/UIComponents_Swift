//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        //A pop-up comes as soon as app loads for seeking permission to the location.
        locationManager.requestWhenInUseAuthorization()
        
        //This method requests for the user current location and after getting it, it triggers one delegate method.
        locationManager.requestLocation()
        
        weatherManager.delegate = self
        searchTextField.delegate = self
        //TextField should report back to our viewController
        //When user interacts with textField, then textField will notify our viewController on what's happening
        //like when user starts typing - stops typing, it intimates to our viewController
    }
    
    
    @IBAction func currentLocationPressed(_ sender: UIButton) {
        
        locationManager.requestLocation()
    }
    
    
}

//MARK: - CLLocationManagerDelegate

extension WeatherViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        print("Got Location")
        
        if let location = locations.last {
            
            //when we once get the location, we deactivate our loctaion manager, because when user again taps on the current location button, then location doesn;t change and delegate method will not be triggered.
            locationManager.stopUpdatingLocation()
            
            let lat  = location.coordinate.latitude
            let long = location.coordinate.longitude
//            print(lat)
//            print(long)
            
            weatherManager.fetchWeather(latitude: lat, longitutde: long)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Got Error \(error)")
    }
    
    
}

//MARK: - UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate {
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        
        //This intimates that editing is ended,now switch down hte keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "No Text")
    }
    
    //    "This function will be triggered when user pressed the return key on the keyboard"
    
    //We return "true" or "false" which tells the textField whether it  should actually processes that return.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("TextFieldShouldReturn")
        
        //This intimates that editing is ended,now switch down hte keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    //This method is triggered when the user tries to end the editing, we return "true" or "false" if we want to actually end the editing or not.
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        print("TextFieldShouldEndEditing")
        
        if searchTextField.text != "" {
            return true
        }
        else
        {
            searchTextField.placeholder = "Type Something"
            return false
        }
    }

    //This method is triggered , when user stops editing.
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("textFieldDidEndEditing")
        
        if let city = searchTextField.text {
            weatherManager.fetchWeather(city: city)
        }
        
        searchTextField.text = ""
    }
    
    //In all the above methods, There is a reference to the textField that triggered this method which got passed in these methods.
    
    //We need the textField to notify our weatherViewController when it detects that editing
}

//MARK: - WeatherManagerDelegate

extension WeatherViewController: WeatherManagerDelegate {
    
    func didUpdateWeather(weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.tempString
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
            self.cityLabel.text = weather.cityName
        }
    }
    
    func didFailWithError(error: Error, reason: String) {
        print(reason)
    }
    
}

