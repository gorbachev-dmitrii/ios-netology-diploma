//
//  MainCoordinator.swift
//  vk-client
//
//  Created by Dima Gorbachev on 03.12.2022.
//

import UIKit

protocol Coordinator: AnyObject {
    var coordinators: [Coordinator] { get set }
}

class MainCoordinator: Coordinator {
    
    var coordinators: [Coordinator] = []
    let tabBarController: UITabBarController

    init() {
        tabBarController = UITabBarController()
        let login = configureLogin()
        tabBarController.viewControllers = [login.navigationController]
        coordinators.append(login)
    }
    
    private func configureLogin() -> LoginCoordinator {
        let navigationController = UINavigationController()
        navigationController.tabBarItem = UITabBarItem(
            title: "tabBarProfile".localized,
            image: UIImage(systemName: "person.fill"),
            selectedImage: nil)
        let loginCoordinator = LoginCoordinator(navigation: navigationController)
        return loginCoordinator
    }

}
