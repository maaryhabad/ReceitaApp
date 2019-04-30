//
//  ReceitaViewController.swift
//  ReceitaApp
//
//  Created by Mariana Beilune Abad on 30/04/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class ReceitaViewController: UIViewController {
    
    
    @IBOutlet weak var imgReceita: UIImageView!
    @IBOutlet weak var nomeReceita: UIButton!
    @IBOutlet weak var txtIngredientes: UITextView!
    var porcoes = 1
    
    
    let receitas = [
        Receita(nome: "Café com leite", ingredientes: ["Café", "Leite"], quantidade: [50, 100], medidas: ["ml", "ml"], imagem: UIImage(named: "pdq")!),
        Receita(nome: "Miojo", ingredientes: ["Miojo", "Água", "Tempero"], quantidade: [1, 400, 1], medidas: ["pacote", "ml", "sachê"], imagem: UIImage(named: "pdq")!),
        Receita(nome: "Nescau", ingredientes: ["Leite", "Nescau"], quantidade: [200, 2], medidas: ["ml", "colheres de sopa"], imagem: UIImage(named: "pdq")!),
        Receita(nome: "Pão de queijo", ingredientes: ["na", "é difícil", "fazer"], quantidade: [1, 1, 1], medidas: ["compra", "cantina", "de"], imagem: UIImage(named: "pdq")!)
    ]
    
    var receitaSelecionada = -1
    
    @IBOutlet weak var textoPorcoes: UILabel!
    

    override func viewWillAppear(_ animated: Bool) {
        atualizarInterface()
    }
    
    
    @IBAction func stepperPorcoes(_ sender: UIStepper) {
        
        porcoes = Int(sender.value)
        
        if porcoes == 1 {
            textoPorcoes.text = "\(porcoes) porção"
            atualizarInterface()
        } else {
            textoPorcoes.text = "\(porcoes) porções"
            atualizarInterface()
        }
    }
    
    func atualizarInterface() {
        let receita = receitas[receitaSelecionada]
        
        nomeReceita.setTitle(receita.nome, for: .normal)
        
        txtIngredientes.text = ""
        for (index, ingredientes) in receita.ingredientes.enumerated() {
            txtIngredientes.text += "\(receita.quantidade[index] * porcoes) \(receita.medidas[index]) de \(ingredientes)\n"
        }
        
    }
    

}
