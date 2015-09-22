//
//  ViewController.swift
//  Es Primo
//
//  Created by cCeo on 17/09/15.
//  Copyright (c) 2015 cCeo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numero: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func isPrime(sender: AnyObject) {
        
        var number = numero.text.toInt()
        var isPrime = true
        
        if number == nil || number <= 0 {
            result.text = "Debes de introducitr un Numero positivo"
        } else {
        if number == 1 || number == 2 {
            isPrime = false
        } else {
            for var i = 2; i < number; i++ {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime == false {
            result.text = " \(number!) no es Primo"
            result.hidden = false
        } else {
            result.text = "\(number!) es un numero Primo"
            result.hidden = false
        }
        
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

