//
//  ViewController.swift
//  TableViewXib
//
//  Created by admin on 10/11/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let privateIdentifier = "CustomCell"
    
    let data: [Car] = [
        Car(imageName: "car", carName: "Tesla Model S", carPrice: "$87,570", carSpeed: "Top speed 180mph", carTime: "0 - 60mph: 3.0s", buttonName: "Booking"),
        Car(imageName: "car", carName: "Tesla Model S", carPrice: "$87,570", carSpeed: "Top speed 180mph", carTime: "0 - 60mph: 3.0s", buttonName: "Booking"),
        Car(imageName: "car", carName: "Tesla Model S", carPrice: "$87,570", carSpeed: "Top speed 180mph", carTime: "0 - 60mph: 3.0s", buttonName: "Booking")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: privateIdentifier, bundle: nil), forCellReuseIdentifier: privateIdentifier)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let car = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: privateIdentifier, for: indexPath) as! CustomCell
        cell.loadData(item: car)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
}

struct Car{
    let imageName: String
    let carName: String
    let carPrice: String
    let carSpeed: String
    let carTime: String
    let buttonName: String
}
