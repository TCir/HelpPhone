//
//  LoginCoordinator.swift
//  HelpPhone
//
//  Created by Thiago Valentim on 31/10/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
    
    // fazendo uma injecao de dependencia
    // dessa forma, foi criado uma constante 'navigationController' para receber a navigation de outro lugar
    let navigationController: UINavigationController
    
    //criando um constructor para criar a constante 'navigationController' sem ser option, criando assim uma injecao de dependencia
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
      
    // quando essa funcao for chamada, irá chamar a viewController do LoginView, fazendo a navegacao de telas, funcao do Coordinator
    func start() {
        let viewController = LoginViewController() // instanciando a viewcontroller
        self.navigationController.pushViewController(viewController, animated: true)
    }

}
