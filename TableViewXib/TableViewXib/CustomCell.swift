//
//  CustomCell.swift
//  TableViewXib
//
//  Created by admin on 10/11/2022.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var typeCar: UILabel!
    @IBOutlet weak var topSpeed: UILabel!
    @IBOutlet weak var timeToSpeedUp: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var booking: UIButton!
    
    func loadData(item: Car){
        iconImage.image = UIImage(named: item.imageName)
        typeCar.text = item.carName
        topSpeed.text = item.carSpeed
        timeToSpeedUp.text = item.carTime
        price.text = item.carPrice
        booking.setTitle("\(item.buttonName)", for: .normal)
        
    }
}
