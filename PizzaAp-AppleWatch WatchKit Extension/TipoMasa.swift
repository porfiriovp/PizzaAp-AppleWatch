//
//  TipoMasa.swift
//  PizzaAp-AppleWatch WatchKit Extension
//
//  Created by user909043 on 2/20/18.
//  Copyright © 2018 Porfirio Villagomez. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {
    
    var tipoDelgada: String = "Delgada"
    var tipoCrujiente: String = "Crujiente"
    var tipoGruesa: String = "Gruesa"
    var vContexto: Valor = Valor()
    
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        vContexto = context as! Valor
        
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
    
    
    @IBAction func masaDelgada() {
    }
    
    
    @IBAction func masaCrujiente() {
    }
    
    
    @IBAction func masaGruesa() {
    }
    
    
    
    
    
    
    
    
    func setContexto(seleccion: String) {
        
        
        vContexto.tipoMasaPizza = seleccion
        pushController(withName: "TipoQueso", context: vContexto)
        print(seleccion)
        
    }
}
