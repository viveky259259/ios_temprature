//
//  ViewController.swift
//  Temprature App
//
//  Created by Vivek Yadav on 27/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celciusInput: UITextField!
    
    @IBOutlet weak var fahrenheitInput: UITextField!
    @IBOutlet weak var resultText: UILabel!

    @IBOutlet weak var resultTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertToFahUIAction(_ sender: Any) {
        let input:String = celciusInput.text!
        print(Double(input)!)
        resultTitle.text = "Celcius to Fahrenheit"
        resultText.text = String(format: "%.3f",convertCelToFah(celcius:Double(input)!))
    }
    
    @IBAction func convertToCelUIAction(_ sender: Any) {
        let input:String = fahrenheitInput.text!
        print(Double(input)!)
        resultTitle.text = "Fahrenheit to Celcius"
        resultText.text = String(format: "%.3f",convertFahToCel(fahrenheit:Double(input)!))
    }
    
    func convertCelToFah(celcius:Double) -> Double{
        return (celcius * (9/5)) + 32
    }
    
    func convertFahToCel(fahrenheit:Double) -> Double{
        return (fahrenheit - 32) * (5/9)
    }
}
