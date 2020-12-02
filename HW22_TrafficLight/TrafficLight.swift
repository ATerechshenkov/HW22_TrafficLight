//
//  TrafficLight.swift
//  HW22_TrafficLight
//
//  Created by Terechshenkov Andrey on 12/2/20.
//

import Foundation

enum TrafficLightColor {
    case red
    case yellow
    case green
}

class TrafficLight {
    private var currentColor: TrafficLightColor = .green
    
    func next() -> TrafficLightColor {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
        
        return currentColor
    }
}
