//
//  CustomTableViewCell.swift
//  TableViewdemo08
//
//  Created by admin on 07/11/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func loadData(item: Animal) {
        iconImage.image = UIImage(named: item.imageName)
        label.text = item.title
    }
    func redTitle(number: IndexPath){
        if (number.row%2 == 0){
            label.textColor = .red
        }
    }
}
