//
//  TableViewCell.swift
//  3mesLastLesson
//
//  Created by Нуридин Сафаралиев on 12/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var cellText: UILabel!
    
    @IBOutlet weak var cellImage: UIImageView!
    
    var isTapped = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(galochkaTap))
        
        cellImage.addGestureRecognizer(tap)
        
            
        }
    @objc func galochkaTap (){
        if isTapped == false {
            print("222")
            cellImage.image = UIImage(systemName: "square")
            isTapped = true
        } else {
            cellImage.image = UIImage(systemName: "checkmark.square")
            isTapped = false
        }
        
    }
    
}
