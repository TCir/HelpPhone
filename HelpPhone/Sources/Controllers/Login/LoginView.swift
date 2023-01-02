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
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    lazy var nameLogoLabel: UILabel = {
        var label = UILabel()
        label.text = "HelpPhone"
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var emailLabel: UILabel = {
        var label = UILabel()
        label.text = "Email"
        label.textColor = .black
        label.textAlignment = .left
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
        setupLabelNameLogo()
    }
    
    
    private func setupLogoImageView() {
        self.addSubview(logoImageView)
        
                let kTop: CGFloat = 60
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 40),
            logoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -200),
            logoImageView.heightAnchor.constraint(equalToConstant: 80),
            
        ])
    }
    
    private func setupLabelNameLogo(){
        self.addSubview(nameLogoLabel)
        
        let kTop: CGFloat = 80
        
        NSLayoutConstraint.activate([
            nameLogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
//            nameLogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            nameLogoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            nameLogoLabel.rightAnchor.constraint(equalTo: self.logoImageView.rightAnchor, constant: -80),
            
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


