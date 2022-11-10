//
//  ViewController.swift
//  CustomTableCellFromXib
//
//  Created by admin on 10/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "XibTableCell", bundle: nil), forCellReuseIdentifier: "XibTableCell")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "XibTableCell") as? XibTableCell)!
        cell.iconImage.image = UIImage(named: String(indexPath.row + 1))
        cell.labelView.text = "\(indexPath.row + 1)"
        return cell
    }
}
