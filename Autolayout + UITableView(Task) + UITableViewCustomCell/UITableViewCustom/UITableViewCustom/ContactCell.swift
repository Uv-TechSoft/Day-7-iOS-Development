//
//  ContactCell.swift
//  UITableViewCustom
//
//  Created by Yogesh Patel on 21/10/21.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func contactConfiguration(){
//        cell.firstnameLabel.text = contact.fisrtname
//        cell.lastnameLabel.text = contact.lastname
//        cell.ageLabel.text = String(contact.age)
//        cell.profileImageView.image = contact.profileImage
    }

}
