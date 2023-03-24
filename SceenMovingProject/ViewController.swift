//
//  ViewController.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/05/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        let label = UILabel()
        label.text = "ViewController"
        label.textColor = .black
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        
        let btnList: [UIButton] = ["v2", "v3", "v4"].map { btnTitle in
            let bt = UIButton()
            bt.setTitle(btnTitle, for: .normal)
            bt.setTitleColor(.black, for: .normal)
            bt.backgroundColor = .lightGray
            bt.widthAnchor.constraint(equalToConstant: 100).isActive = true
            bt.heightAnchor.constraint(equalToConstant: 30).isActive = true
            bt.addTarget(self, action: #selector(onTapButton(_:)), for: .touchUpInside)
            
            return bt
        }

        for btn in btnList {
            stackView.addArrangedSubview(btn)
        }
    }
    
    @objc
    private func onTapButton(_ btn: UIButton) {
        if btn.title(for: .normal) == "v2" {
            
        }
    }


    //git test~~~!
    // 03241331~~~~~~!
    // lsy_test_b 0324 1524
    // lsy_test_b 0324 1526
}

