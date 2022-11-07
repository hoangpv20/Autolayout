//
//  ViewController.swift
//  constrainCode
//
//  Created by admin on 31/10/2022.
//

import UIKit

extension UIColor {
    
    convenience init(_ hex: String, alpha: CGFloat = 1.0) {
        var cString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") { cString.removeFirst() }
        
        if cString.count != 6 {
            self.init("ff0000")
            return
        }
        
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
    
}

func randomHexColorCode() -> String{
    let a = ["1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"];
    return     "#".appending(a[Int(arc4random_uniform(15))]).appending(a[Int(arc4random_uniform(15))]).appending(a[Int(arc4random_uniform(15))]).appending(a[Int(arc4random_uniform(15))]).appending(a[Int(arc4random_uniform(15))]).appending(a[Int(arc4random_uniform(15))])
    
}

class ViewController: UIViewController {
    
    let myView1: UIView = {
        let myView1 = UIView()
        myView1.translatesAutoresizingMaskIntoConstraints = false
        //        myView1.backgroundColor = UIColor("\(randomHexColorCode())")
        return myView1
        
    }()
        
    let myView2: UIView = {
        let myView2 = UIView()
        myView2.translatesAutoresizingMaskIntoConstraints = false
        //        myView2.backgroundColor = .red
        return myView2
        
    }()
    
    let myView3: UIView = {
        let myView3 = UIView()
        myView3.translatesAutoresizingMaskIntoConstraints = false
        //        myView3.backgroundColor = .yellow
        return myView3
        
    }()
    
    let myView4: UIView = {
        let myView4 = UIView()
        myView4.translatesAutoresizingMaskIntoConstraints = false
        //        myView4.backgroundColor = .cyan
        return myView4
        
    }()
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView1)
        view.addSubview(myView2)
        view.addSubview(myView3)
        view.addSubview(myView4)
        
        
        button1.setTitle("Press me", for: .normal)
        button1.setTitleColor(.systemBlue, for: .normal)
        button1.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = .white
        myView1.addSubview(button1)
        
        button2.setTitle("Press me", for: .normal)
        button2.setTitleColor(.systemBlue, for: .normal)
        button2.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = .white
        myView2.addSubview(button2)
        
        button3.setTitle("Press me", for: .normal)
        button3.setTitleColor(.systemBlue, for: .normal)
        button3.addTarget(self, action: #selector(buttonAction3), for: .touchUpInside)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.backgroundColor = .white
        myView3.addSubview(button3)
        
        button4.setTitle("Press me", for: .normal)
        button4.setTitleColor(.systemBlue, for: .normal)
        button4.addTarget(self, action: #selector(buttonAction4), for: .touchUpInside)
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.backgroundColor = .white
        myView4.addSubview(button4)
        
        addConstraints()
    }
    
    //Action for button
    @objc
    func buttonAction1(){
        myView1.backgroundColor = UIColor("\(randomHexColorCode())")
    }
    @objc
    func buttonAction2(){
        myView2.backgroundColor = UIColor("\(randomHexColorCode())")
    }
    @objc
    func buttonAction3(){
        myView3.backgroundColor = UIColor("\(randomHexColorCode())")
    }
    @objc
    func buttonAction4(){
        myView4.backgroundColor = UIColor("\(randomHexColorCode())")
    }
    
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        //View 1
        constraints.append(myView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(myView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(myView1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))
        constraints.append(myView1.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5))
        constraints.append(button1.centerXAnchor.constraint(equalTo: myView1.centerXAnchor, constant: 0))
        constraints.append(button1.centerYAnchor.constraint(equalTo: myView1.centerYAnchor, constant: 0))
        constraints.append(button1.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(button1.heightAnchor.constraint(equalToConstant: 50))
        
        
        //View 2
        constraints.append(myView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        constraints.append(myView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(myView2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))
        constraints.append(myView2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5))
        constraints.append(button2.centerXAnchor.constraint(equalTo: myView2.centerXAnchor, constant: 0))
        constraints.append(button2.centerYAnchor.constraint(equalTo: myView2.centerYAnchor, constant: 0))
        constraints.append(button2.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(button2.heightAnchor.constraint(equalToConstant: 50))
        
        
        //View 3
        constraints.append(myView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(myView3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        constraints.append(myView3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))
        constraints.append(myView3.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5))
        constraints.append(button3.centerXAnchor.constraint(equalTo: myView3.centerXAnchor, constant: 0))
        constraints.append(button3.centerYAnchor.constraint(equalTo: myView3.centerYAnchor, constant: 0))
        constraints.append(button3.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(button3.heightAnchor.constraint(equalToConstant: 50))
        
        
        //View4
        constraints.append(myView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        constraints.append(myView4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        constraints.append(myView4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5))
        constraints.append(myView4.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5))
        constraints.append(button4.centerXAnchor.constraint(equalTo: myView4.centerXAnchor, constant: 0))
        constraints.append(button4.centerYAnchor.constraint(equalTo: myView4.centerYAnchor, constant: 0))
        constraints.append(button4.widthAnchor.constraint(equalToConstant: 100))
        constraints.append(button4.heightAnchor.constraint(equalToConstant: 50))
        
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
}
