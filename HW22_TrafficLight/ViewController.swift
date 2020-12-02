//
//  ViewController.swift
//  HW22_TrafficLight
//
//  Created by Terechshenkov Andrey on 12/2/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLamp: UILabel!
    @IBOutlet var yellowLamp: UILabel!
    @IBOutlet var greenLamp: UILabel!
    @IBOutlet var switchButton: UIButton!
    
    private var trafficLight:TrafficLight!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchOff()
        switchButton.layer.cornerRadius = 10
        
        // Где должны создаваться и инициализироваться классы с логикой?
        trafficLight = TrafficLight()
    }
    
    private func switchOff() {
        redLamp.alpha = 0.3
        yellowLamp.alpha = 0.3
        greenLamp.alpha = 0.3
    }
    
    private func switchOn(label: UILabel) {
        switchOff()
        label.alpha = 1
    }

    @IBAction func onSwitchButton() {
        switchButton.setTitle("Next", for: .normal)
        
        switch trafficLight.next() {
        case .red:
            switchOn(label: redLamp)
        case .yellow:
            switchOn(label: yellowLamp)
        case .green:
            switchOn(label: greenLamp)
        }
    }
}

