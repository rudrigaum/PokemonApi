//
//  PokeView.swift
//  PokemonApi
//
//  Created by Rodrigo Cerqueira Reis on 07/11/24.
//

import Foundation
import UIKit

class PokeView: UIView {
    
    lazy var id: UILabel = {
        let id = UILabel()
        id.text = "#001"
        id.translatesAutoresizingMaskIntoConstraints = false
        return id
    }()
    
    lazy var name: UILabel = {
        let name = UILabel()
        name.text = "Bulbasaur"
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "bulbasaur")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var typeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var powerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var typeLabel: UILabel = {
        let name = UILabel()
        name.text = "Grass"
        return name
    }()
    
    lazy var powerLabel: UILabel = {
       let name = UILabel()
       name.text = "Posion"
       return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(mainView)
        mainView.addSubview(image)
        mainView.addSubview(id)
        mainView.addSubview(name)
        mainView.addSubview(typeView)
        addSubview(powerView)
        addSubview(powerView)
        addSubview(typeLabel)
        addSubview(powerLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            mainView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            mainView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            mainView.heightAnchor.constraint(equalToConstant: 150),
            
            image.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10),
            image.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 10),
            image.heightAnchor.constraint(equalToConstant: 80),
            image.widthAnchor.constraint(equalToConstant: 80),
            
            id.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            id.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            
            name.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            name.topAnchor.constraint(equalTo: id.topAnchor, constant: 20),
            
            typeView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            typeView.topAnchor.constraint(equalTo: name.topAnchor, constant: 30),
            typeView.heightAnchor.constraint(equalToConstant: 20),
            typeView.widthAnchor.constraint(equalToConstant: 40),
        
        ])
    }
}
