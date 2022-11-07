//
//  ViewController.swift
//  TableViewdemo08
//
//  Created by admin on 07/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data: [Animal] = [
    Animal(imageName: "bird", title: "Bird"),
    Animal(imageName: "bird", title: "Bird"),
    Animal(imageName: "bird", title: "Bird"),
    Animal(imageName: "bird", title: "Bird"),

    ]

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.loadData(item: animal)
//        if (indexPath.row%2 == 0){
//            cell.label.textColor = .red
//        }
        cell.redTitle(number: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
struct Animal{
    let imageName: String
    let title: String
}

