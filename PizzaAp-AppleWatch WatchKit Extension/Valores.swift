//
//  Valores.swift
//  PizzaAp-AppleWatch WatchKit Extension
//
//  Created by user909043 on 2/21/18.
//  Copyright © 2018 Porfirio Villagomez. All rights reserved.
//

import Foundation

import WatchKit

class Valor: NSObject {
    
    var tamanoPizza: String? = nil
    var tipoMasaPizza: String? = nil
    var tipoQuesoPizza: String? = nil
    
    override init() {
        
    }
    
    init(valor: Valor) {
        self.tamanoPizza = valor.tamanoPizza
        self.tipoMasaPizza = valor.tipoMasaPizza
        self.tipoQuesoPizza = valor.tipoQuesoPizza
}
    
    
    
    
    
    
    
}
