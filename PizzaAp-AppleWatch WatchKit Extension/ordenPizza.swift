//
//  ordenPizza.swift
//  PizzaAp-AppleWatch WatchKit Extension
//
//  Created by user909043 on 2/21/18.
//  Copyright © 2018 Porfirio Villagomez. All rights reserved.
//

import WatchKit
import Foundation


class ordenPizza: WKInterfaceController {
    
    
    @IBOutlet var tamanoLbl: WKInterfaceLabel!
    
    
    @IBOutlet var masaLbl: WKInterfaceLabel!
    
    
    @IBOutlet var quesoLbl: WKInterfaceLabel!
    
    var vContexto: Valor = Valor()
    
    
    
    
    
    
    
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        vContexto = context as! Valor
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        tamanoLbl.setText(vContexto.tamanoPizza)
        masaLbl.setText(vContexto.tipoMasaPizza)
        quesoLbl.setText(vContexto.tipoQuesoPizza)
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func confirmarOrden() {
        
    }
    

}
