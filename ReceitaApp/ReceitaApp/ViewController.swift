//
//  ViewController.swift
//  ReceitaApp
//
//  Created by Mariana Beilune Abad on 23/04/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func vaiParaReceita(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "receita") as? ReceitaViewController {
            vc.receitaSelecionada = 3
            self.navigationController?.show(vc, sender: self)
        }
        
    }
    
}

