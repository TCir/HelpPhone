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
        label.font = UIFont.boldSystemFont(ofSize: 29)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameBLogoLabel: UILabel = {
        var label = UILabel()
        label.text = "Phone"
        label.textColor = .black
        label.textAlignment = .left
        label.font = label.font.withSize(29)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var welcomeMessage:UILabel = {
        var label = UILabel()
        label.text = "Bem vindos à Help Phone! Faça seu login:"
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize:18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var emailTextField:UITextField = {
        var textField = UITextField()
        textField.autocorrectionType = .no
//        textField.backgroundColor = .white
//        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Email"
        textField.textAlignment = .center
        textField.textColor = .darkGray
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 30
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
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
//        setupLabelEmail()
        setupLogoImageView()
        setupLabelNameALogo()
        setupLabelNameBLogo()
        setupWelcomeMessage()
        setuptEmailTextField()
    }
    
    
    private func setupLogoImageView() {
        self.addSubview(logoImageView)
        
        let kTop: CGFloat = 60
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            logoImageView.widthAnchor.constraint(equalToConstant: 80),
            logoImageView.heightAnchor.constraint(equalToConstant: 80), //altura
            logoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 60),// distancia da bora a esqurd
        ])
    }
    
    private func setupLabelNameALogo(){
        self.addSubview(nameALogoLabel)
        
        let kTop: CGFloat = 90
        
        NSLayoutConstraint.activate([
            nameALogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            nameALogoLabel.leftAnchor.constraint(equalTo: logoImageView.rightAnchor, constant: 0),
        ])
    }
    
    private func setupLabelNameBLogo(){
        self.addSubview(nameBLogoLabel)
        
        let kTop: CGFloat = 90
        
        NSLayoutConstraint.activate([
            nameBLogoLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: kTop),
            nameBLogoLabel.leftAnchor.constraint(equalTo: nameALogoLabel.leftAnchor, constant: 60),
        ])
    }
    
    private func setupWelcomeMessage() {
        self.addSubview(welcomeMessage)
        
        let kTop: CGFloat = 60
        
        NSLayoutConstraint.activate([
            welcomeMessage.topAnchor.constraint(equalTo: nameALogoLabel.topAnchor, constant:  kTop),
            //            welcomeMessage.widthAnchor.constraint(equalToConstant: 90),
            welcomeMessage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 60),
            welcomeMessage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -60),
        ])
    }
    
    
    private func setuptEmailTextField() {
        self.addSubview(emailTextField)
        
        let kTop: CGFloat = 90
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: welcomeMessage.topAnchor, constant: kTop),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    
    

    
    
    
    
}


