//
//  TamanodePizza.swift
//  PizzaAp-AppleWatch WatchKit Extension
//
//  Created by user909043 on 2/20/18.
//  Copyright © 2018 Porfirio Villagomez. All rights reserved.
//


import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var tamanoChica: String = "Chica"
    var tamanoMediana: String = "Mediana"
    var tamanoGrande: String = "Grande"

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func tChica() {
        setContexto(seleccion: tamanoChica)    }

    
    @IBAction func tMediana() {
        setContexto(seleccion: tamanoMediana)    }
    
    
    @IBAction func tGrande() {
        setContexto(seleccion: tamanoGrande)    }
    
    func setContexto(seleccion: String) {
        
        
        let  vContexto = Valor()
        vContexto.tamanoPizza = seleccion
        pushController(withName: "vistaMasa", context: vContexto)
        print(seleccion)
        
    }
    
}
    
    







    

    
    

