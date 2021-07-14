//
//  Util.swift
//  SceenMovingProject
//
//  Created by sy lee on 2021/07/13.
//

import Foundation
import UIKit

extension UIViewController {
    
    func makeButtonStackView(items: [String]) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        let btnList: [UIButton] = items.map { btnTitle in
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
        
        return stackView
    }
    
    @objc
    func onTapButton(_ btn: UIButton) {
        Log.d("")
    }
}
