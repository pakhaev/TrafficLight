//
//  ViewController.swift
//  TrafficLight
//
//  Created by Khusain on 17.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var trafficLightViews: [UIView]!
    @IBOutlet var changeTrafficButton: UIButton!
    
    private var indexArray = 0
    private var previousIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for trafficLight in trafficLightViews {
            trafficLight.layer.cornerRadius = trafficLight.frame.width / 2
            trafficLight.alpha = 0.3
        }

        changeTrafficButton.layer.cornerRadius = changeTrafficButton.frame.height / 2
        
    }

    @IBAction func changeTrafficTapped() {
        trafficLightViews[indexArray].alpha = 1
        
        if changeTrafficButton.currentTitle == "START" {
            changeTrafficButton.setTitle("NEXT", for: .normal)
        } else {
            trafficLightViews[previousIndex].alpha = 0.3
        }
        
        previousIndex = indexArray
        indexArray = indexArray + 1 < trafficLightViews.count ? indexArray + 1 : 0
    }
    
}

