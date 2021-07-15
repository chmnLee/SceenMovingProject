//
//  View3Controller.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/05/18.
//

import UIKit

class View3Controller: BaseViewController {

    override func viewDidLoad() {
        fileName = "View3Controller"
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = fileName
        label.textColor = .black
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let stView = makeButtonStackView(items: ["v1", "v2", "v4"])
        view.addSubview(stView)
        
        stView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
    }
    
    override func onTapButton(_ btn: UIButton) {
        Log.d("")        
        switch btn.title(for: .normal) {
        case "v1":
            coordinator?.move1()
        case "v2":
            coordinator?.move2()
        case "v4":
            coordinator?.move4()
        default:
            Log.d("")
        }
    }
}
