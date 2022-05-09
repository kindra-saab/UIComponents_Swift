import UIKit
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(weather: WeatherModel)
    func didFailWithError(error: Error, reason: String)
}

struct WeatherManager {
    
    
    let apiURL = "https://api.openweathermap.org/data/2.5/weather?appid=d2c7981dfed5b410991be2839ff35d7c&&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(city: String)
    {
        let finalApiUrl = "\(apiURL)&q=\(city)"
//        print(finalApiUrl)
        performRequest(urlString: finalApiUrl)
    }
    
    func fetchWeather(latitude: CLLocationDegrees , longitutde: CLLocationDegrees)
    {
        let finalApiUrl = "\(apiURL)&lat=\(latitude)&lon=\(longitutde)"
        performRequest(urlString: finalApiUrl)
    }
    
    func performRequest(urlString: String)
    {
        //1. create a URL
        //URL Object-> initializing url from string
        //it might ne nil, that's why we have used if let.
        if let url = URL(string: urlString){
            
//            print(url)
            
//            2. Create a URL Session
            //Just like a browser
            //Its the thing, that can perform networking.
            let session = URLSession(configuration: .default)
//            print(session)
            
//            3. Give the session a task
            //giving task to our urlSession, just like we put url in browser's URL Bar.
            //our data task is trigger this "completionHandler" metohd.
            //as completion handler is the last parameter in our function, we can write it separately.
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error != nil {
                    delegate?.didFailWithError(error: error!, reason: "Wrong City")
//                    print(error!)
                    return
                }
                
                if let safeData = data {
                    //Converting the recieved data in String.
//                    let dataString = String(data: safeData, encoding: .utf8)
                    if let weather = parseJSON(weatherData: safeData) {
                        delegate?.didUpdateWeather(weather: weather)
                    }
//                    print(dataString)
                }
                
            }
            
//            4. Start the task
            //like we hit enter in the search bar in browser,
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData) //it returns the object of weatherData.
            
//            as "decodedData" is a object of "weatherData", we can access "name" property
            let name = decodedData.name
            let temp = decodedData.main.temp
//            let desc = decodedData.weather[0].description
            let id   = decodedData.weather[0].id
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            print(weather.conditionName)
            return weather
            
        } catch {
            delegate?.didFailWithError(error: error, reason: "Not able to decode")
//            print(error)
            return nil
        }
    }
    
//    func handle(data: Data?, response: URLResponse?, error: Error?)
//    {
//        if error != nil {
//            print(error!)
//            return
//        }
//
//        if let safeData = data {
//            //Converting the recieved data in String.
//            let dataString = String(data: safeData, encoding: .utf8)
//            print(dataString)
//        }
//    }
    
    
}
