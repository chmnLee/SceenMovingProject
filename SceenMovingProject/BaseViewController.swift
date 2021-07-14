//
//  BaseViewController.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/07/13.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    var fileName: String = ""
    var naviRightButton: UIBarButtonItem {
        return UIBarButtonItem(title: "HOME", style: .done, target: self, action: #selector(onTapNavigationBarButton(_:)))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = fileName
        navigationItem.rightBarButtonItem = naviRightButton
        
        view.backgroundColor = .white
    }
    
    @objc
    func onTapNavigationBarButton(_ btn: UIBarButtonItem) {
        switch btn.title {
        case "HOME":
            navigationController?.popToRootViewController(animated: true)
        default:
            Log.d("onTapNavigationBarButton DEFAULT")
        }
    }
}
