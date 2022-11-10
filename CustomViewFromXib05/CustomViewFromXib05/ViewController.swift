//
//  ViewController.swift
//  CustomViewFromXib05
//
//  Created by admin on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testView: TestView!
    @IBOutlet weak var testView2: TestView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testView.imageView.image = UIImage(named: "bird")
        testView.textView.text = "The Bird"
        testView.textView.textColor = .gray
        testView.buttonView.setTitle("Buy", for: .normal)
        testView.buttonView.backgroundColor = .red
        
        testView2.imageView.image = UIImage(named: "fish")
        testView2.textView.text = "The Fish"
        testView2.textView.textColor = .gray
        testView2.buttonView.setTitle("Buy", for: .normal)
        testView2.buttonView.backgroundColor = .red
    }


}

