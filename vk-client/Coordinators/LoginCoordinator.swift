//
//  LoginCoordinator.swift
//  vk-client
//
//  Created by Dima Gorbachev on 03.12.2022.
//

import UIKit

final class LoginCoordinator: Coordinator {
    let navigationController: UINavigationController
    var coordinators: [Coordinator] = []
    
    init(navigation: UINavigationController) {
        self.navigationController = navigation
    }
    
    func start() {
        let loginController = LoginViewController()
        navigationController.pushViewController(loginController, animated: true)
    }
}
