//
//  CalculationViewController.swift
//  MisakoooKadai3
//
//  Created by misakoarai on 2021/08/21.
//
import UIKit

class CalculationViewController: UIViewController {
    @IBOutlet private weak var numberTextField1: UITextField!
    @IBOutlet private weak var numberTextField2: UITextField!
    @IBOutlet private weak var enterdNumberLabel1: UILabel!
    @IBOutlet private weak var enterdNumberLabel2: UILabel!
    @IBOutlet private weak var calculationResultLabel: UILabel!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!
    
    @IBAction private func didTapCalculationButton(_ sender: UIButton) {
        var number1 = Int(numberTextField1.text!) ?? 0
        var number2 = Int(numberTextField2.text!) ?? 0
        
        if switch1.isOn {
            number1 *= -1
        }
        
        if switch2.isOn {
            number2 *= -1
        }
        enterdNumberLabel1.text = String(number1)
        enterdNumberLabel2.text = String(number2)
        calculationResultLabel.text = String(number1 + number2)
    }
}
