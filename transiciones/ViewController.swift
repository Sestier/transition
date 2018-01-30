//
//  ViewController.swift
//  transiciones
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vwContenedorNumero: UIView!
    @IBOutlet weak var lblNumero: UILabel!
    var contador = 0
    
    @IBAction func doTapTransicion(_ sender: Any) {
        /*contador += 1
        lblNumero.text = String(contador)*/
        
        UIView.transition(with: vwContenedorNumero, duration: 0.75, options: [.transitionFlipFromBottom], animations: {
        
            self.contador += 3
            self.lblNumero.text = String(self.contador)
            
        }, completion: nil)
    }
    
    @IBAction func doSwipeContenedor(_ sender: Any) {
        
        UIView.transition(with: vwContenedorNumero, duration: 0.75, options: [.transitionCurlDown], animations: {
            
            self.contador -= 1
            self.lblNumero.text = String(self.contador)
            
        }, completion: nil)
        
    }
    
    @IBAction func doSwipeDos(_ sender: Any) {
        
        UIView.transition(with: vwContenedorNumero, duration: 0.75, options: [.transitionCurlUp], animations: {
            
            self.contador += 1
            self.lblNumero.text = String(self.contador)
            
        }, completion: nil)
        
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

