//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dhanush S on 22/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalclulatorBrain {
    
    var bmiVal: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmiVal = BMI(value: bmiValue, advice: "Eat More Carbs", color: .blue)
        } else if bmiValue < 24.9 {
            bmiVal = BMI(value: bmiValue, advice: "Well Maintain", color: .green)
        } else {
            bmiVal = BMI(value: bmiValue, advice: "Go to the Fucking Gym", color: .red)
        }
    }
    
    func getBMIValue() -> String? {
        let result = String(format: "%.1f", bmiVal?.value ?? 0.0)
        return result
    }
    
    func getadvice() -> String {
        return bmiVal?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiVal?.color ?? UIColor.gray
    }
}
