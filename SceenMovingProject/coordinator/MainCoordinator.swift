//
//  MainCoordinator.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/07/14.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func move1() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func move2() {
        let vc = View2Controller()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func move3() {
        let vc = View3Controller()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func move4() {
        let vc = View4Controller()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
