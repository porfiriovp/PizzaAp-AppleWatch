//
//  TipoQueso.swift
//  PizzaAp-AppleWatch WatchKit Extension
//
//  Created by user909043 on 2/21/18.
//  Copyright © 2018 Porfirio Villagomez. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {
    
    var quesoMozarela: String = "Mozarela"
    var quesoCheddar: String = "Cheddar"
    var quesoParmesano: String = "Parmesano"
    var sinQUeso: String = "Sin Queso"
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
    
    
    @IBAction func qMozarela() {
        setContexto(seleccion: quesoMozarela)
    }
    
    
    @IBAction func qCheddar() {
        setContexto(seleccion: quesoCheddar)
    }
    
    
    @IBAction func qParmesano() {
        setContexto(seleccion: quesoParmesano)
    }
    
    
    @IBAction func SinQ() {
        setContexto(seleccion: sinQUeso)
        
    }
    
    
    

    func setContexto(seleccion: String) {
        vContexto.tipoQuesoPizza = seleccion
        pushController(withName: "vistaOrden", context: vContexto)
        print(seleccion)
        
    }
    
}
