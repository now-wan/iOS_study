//
//  SimpleWeatherViewController.swift
//  SimpleWeather
//
//  Created by 이제완 on 2022/11/17.
//

import UIKit

class SimpleWeatherViewController: UIViewController {

    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityDegree: UILabel!
    @IBOutlet weak var cityWeather: UIImageView!
    
    
    let cityNames: [String] = ["Seoul", "Suwon", "Hwasung", "Jeju"]
    let cityDegrees: [Int] = [10, 12, 13, 15]
    let cityWeathers: [String] = ["sun.max.fill", "cloud.drizzle.fill", "cloud.sun.fill", "wind"]
    var cityIndex: Int = -1
    
    func reload() {
        var selectIndex = Int.random(in: 0..<cityNames.endIndex)
        while selectIndex == cityIndex {
            selectIndex = Int.random(in: 0..<cityNames.endIndex)
        }
        
        cityName.text = cityNames[selectIndex]
        cityDegree.text = "\(cityDegrees[selectIndex])°"
        cityWeather.image = UIImage(systemName: cityWeathers[selectIndex])?.withRenderingMode(.alwaysOriginal)
        cityIndex = selectIndex        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    @IBAction func tapChangeButton(_ sender: Any) {
        reload()
    }
}
