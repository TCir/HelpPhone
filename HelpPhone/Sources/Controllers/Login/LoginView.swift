//
//  LoginView.swift
//  HelpPhone
//
//  Created by Thiago Valentim on 01/01/23.
//

import Foundation
import UIKit

//1. Primieira coisa que preciso implementar uma view é os  constructs, preciso ter são os 'init'

class LoginView: UIView {
    // MARK: - Setup visual elements (onde ira se adicionado os elementos visuais)
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logoSmall"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    lazy var nameALogoLabel: UILabel = {
        var label = UILabel()
        label.text = "Help"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameBLogoLabel: UILabel = {
        var label = UILabel()
        label.text = "Phone"
        label.textColor = .black
        label.textAlignment = .left
        label.font = label.font.withSize(28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    lazy var emailLabel: UILabel = {
        var label = UILabel()
        label.text = "Email"
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Inits
    
    override init(frame: CGRect) { //vida aqui dentro tudo que quero que seja inicializado assim que a view for carregada
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupVisualElements()
    }
    required init?(coder: NSCoder) { // é obrigatorio ao usar o init frame
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func setupVisualElements() {
//      setupLabelEmail()
        setupLogoImageView()
        setupLabelNameALogo()
        setupLabelNameBLogo()
    }
    
    
    private func setupLogoImageView() {
        self.addSubview(logoImageView)
        
                let kTop: CGFloat = 60
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            logoImageView.widthAnchor.constraint(equalToConstant: 80),
            logoImageView.heightAnchor.constraint(equalToConstant: 80), //altura
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 60),// distancia da bora a esqurda

           
            
        ])
    }
    
    private func setupLabelNameALogo(){
        self.addSubview(nameALogoLabel)
        
        let kTop: CGFloat = 90
        
        NSLayoutConstraint.activate([
            nameALogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            nameALogoLabel.leftAnchor.constraint(equalTo: logoImageView.rightAnchor, constant: 0),
//            nameALogoLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -160),
            
        ])
    }
    
    private func setupLabelNameBLogo(){
        self.addSubview(nameBLogoLabel)
        
        let kTop: CGFloat = 90
        
        NSLayoutConstraint.activate([
            nameBLogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            nameBLogoLabel.leftAnchor.constraint(equalTo: nameALogoLabel.leftAnchor, constant: 60),
//            nameBLogoLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            
        ])
    }
    
    private func setupLabelEmail() {
        self.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
          
            emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 260),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
        ])
    }
    

    
    
    
    
}


