//
//  ViewController.swift
//  Prueba7
//
//  Created by OSCAR on 24/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var botonConfetti: UIButton!
    
    @IBOutlet weak var botonTriangle: UIButton!
    @IBOutlet weak var botonStar: UIButton!
    @IBOutlet weak var botonDiamond: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        botonConfetti.round()
        botonTriangle.round()
        botonStar.round()
        botonDiamond.round()
        
    }

    @IBAction func botonCofetti(_ sender: Any) {
    }
    @IBAction func botonTriangle(_ sender: Any) {
    }
    @IBAction func botonStar(_ sender: Any) {
    }
    @IBAction func botonDiamond(_ sender: Any) {
    }
    
    
}

