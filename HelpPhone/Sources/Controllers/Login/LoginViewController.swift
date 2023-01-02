//
//  LoginViewController.swift
//  HelpPhone
//
//  Created by Thiago Valentim on 05/12/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var mainView = LoginView()  // recebendo o arquivo LoginView como valor
    
// Jeito antigo de se vazer uma viewa. 
//       var view = UIView()
//       view.backgroundColor = .gray
//        return view
//    }()
    
    override func loadView() {
        self.view = mainView
    }
}
