//
//  FavoritosViewController.swift
//  ReceitaApp
//
//  Created by Mariana Beilune Abad on 30/04/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import UIKit

class FavoritosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tag = (sender as! UIView).tag
        
        if let vc = segue.destination as? ReceitaViewController {
            vc.receitaSelecionada = tag
        }
    }

}
