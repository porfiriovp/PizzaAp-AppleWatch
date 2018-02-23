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
        setContexto(seleccion: tipoDelgada)
    }
    
    
    @IBAction func masaCrujiente() {
        setContexto(seleccion: tipoCrujiente)
    }
    
    
    @IBAction func masaGruesa() {
        setContexto(seleccion: tipoGruesa)
    }
    
    
    
    
    
    
    
    
    func setContexto(seleccion: String) {
        
        
        vContexto.tipoMasaPizza = seleccion
        pushController(withName: "vistaQueso", context: vContexto)
        print(seleccion)
        
    }
}
