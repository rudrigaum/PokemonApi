//
//  ViewController.swift
//  PokemonApi
//
//  Created by Rodrigo Cerqueira Reis on 29/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var pokeScreen: PokeView?
    
    override func loadView() {
        pokeScreen = PokeView()
        view = pokeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

