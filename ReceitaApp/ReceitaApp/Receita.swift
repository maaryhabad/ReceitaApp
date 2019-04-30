//
//  Receita.swift
//  ReceitaApp
//
//  Created by Mariana Beilune Abad on 30/04/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation
import UIKit

class Receita {
    
    var nome: String
    var ingredientes: [String]
    var quantidade: [Int]
    var medidas: [String]
    var imagem: UIImage
    
    init(nome: String, ingredientes: [String], quantidade: [Int], medidas: [String], imagem: UIImage) {
        self.nome = nome
        self.ingredientes = ingredientes
        self.quantidade = quantidade
        self.medidas = medidas
        self.imagem = imagem
    }
}
