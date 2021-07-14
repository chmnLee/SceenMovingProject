//
//  ViewController.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/05/18.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        fileName = "ViewController"
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = fileName
        label.textColor = .black
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let stView = makeButtonStackView(items: ["v2", "v3", "v4"])
        view.addSubview(stView)
        
        stView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        

    }
    
    override func onTapButton(_ btn: UIButton) {
        Log.d("")
        var vc: UIViewController?
        
        switch btn.title(for: .normal) {
        case "v2":
            vc = View2Controller()
        case "v3":
            vc = View3Controller()
        case "v4":
            vc = View4Controller()
        default:
            Log.d("")
        }
        
        if let vc = vc {
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

