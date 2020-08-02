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
        
        
//        crea confeti
        

        
    }

    @IBAction func botonCofetti(_ sender: Any) {
        setUpConfetti()
        
            startConfetti()
        
        
        
    }
    @IBAction func botonTriangle(_ sender: Any) {
                 setUpConfetti()
              
                  confettiView.type = .triangle
                  startConfetti()
              
        
    }
    @IBAction func botonStar(_ sender: Any) {
  setUpConfetti()
  
      confettiView.type = .star
      startConfetti()
  
   
   
    }
    @IBAction func botonDiamond(_ sender: Any) {
        setUpConfetti()
        
            confettiView.type = .diamond
            startConfetti()
        
         
    }
    
    
    @IBAction func slider(_ sender: Any) {
        let valor = slider.value
        print ( valor)
        confettiView.intensity = valor
    }
    
    func setUpConfetti(){
        

        confettiView = SAConfettiView(frame: self.view.bounds)
        self.view.addSubview(confettiView)
        
        return
        
    }
    func startConfetti (){
        confettiView.startConfetti()
        return
    
    }
    func stopConfetti(){
        confettiView.stopConfetti()
        return
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if confettiView.isActive() {
            // Stop confetti
            confettiView.stopConfetti()
            self.view.sendSubviewToBack (confettiView)
            isRainingConfetti = false
            

            
        }
        
            

    

    
    
}

}
