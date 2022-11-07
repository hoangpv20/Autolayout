//
//  ViewController.swift
//  ButtonDemo
//
//  Created by admin on 02/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 100,
                                                    y: 100,
                                                    width: 200,
                                                    height: 60))
                button.setTitle("Test",
                                for: .normal)
                button.setTitleColor(.systemBlue,
                                     for: .normal)
                
                button.addTarget(self,
                                 action: #selector(buttonAction),
                                 for: .touchUpInside)
                
                self.view.addSubview(button)
        
    }
    @objc
    func buttonAction() {
        view.backgroundColor = .blue
    }
}
    


