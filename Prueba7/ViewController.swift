//
//  ViewController.swift
//  Prueba7
//
//  Created by OSCAR on 24/07/2020.
//  Copyright © 2020 OSCAR. All rights reserved.
//

import UIKit
import SAConfettiView

class ViewController: UIViewController {
    //    Declaraciones
    @IBOutlet weak var botonConfetti: UIButton!
    @IBOutlet weak var botonTriangle: UIButton!
    @IBOutlet weak var botonStar: UIButton!
    @IBOutlet weak var botonDiamond: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    var confettiView : SAConfettiView!
    var isRainingConfetti = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        botonConfetti.round()
        botonTriangle.round()
        botonStar.round()
        botonDiamond.round()
    }
    
    @IBAction func botonCofetti(_ sender: Any) {
        
        setUpConfetti(tipo: 1)
    }
    
    @IBAction func botonTriangle(_ sender: Any) {
        
        setUpConfetti(tipo: 2)
    }
    
    @IBAction func botonStar(_ sender: Any) {
        setUpConfetti(tipo: 3)
    }
    
    @IBAction func botonDiamond(_ sender: Any) {
        
        setUpConfetti(tipo: 4)
    }
    
    @IBAction func slider(_ sender: Any) {
        
        let valor = slider.value
        confettiView.intensity = valor
        
    }
    
    func setUpConfetti(tipo: Int){
        
        confettiView = SAConfettiView(frame: self.view.bounds)
        
        if tipo == 1{
            confettiView.type = .confetti
        }else  if tipo == 2 {
            confettiView.type = .triangle
            
        }else  if tipo == 3 {
            confettiView.type = .star
        }else  if tipo == 4 {
            confettiView.type = .diamond
        }
        self.view.addSubview(confettiView)
        confettiView.startConfetti()
        
    }
    
    func stopConfetti(){
        confettiView.stopConfetti()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if confettiView.isActive() {
            // Stop confetti
            confettiView.stopConfetti()
            confettiView.removeFromSuperview()
            isRainingConfetti = false
            
        }
    }
}
