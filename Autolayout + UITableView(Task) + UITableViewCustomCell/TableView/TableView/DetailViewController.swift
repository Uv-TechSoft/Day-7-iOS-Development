//
//  DetailViewController.swift
//  TableView
//
//  Created by Yogesh Patel on 16/10/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fnameLabel: UILabel!
    @IBOutlet weak var lnameLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var dict = [String: Any?]()
    var contactModel: ContactModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fnameLabel.text = dict["fname"] as? String
        lnameLabel.text = dict["lname"] as? String
        img.image = dict["profile"] as? UIImage
        
//        fnameLabel.text = contactModel?.fname
//        lnameLabel.text = contactModel?.lname
//        img.image = contactModel?.profileImage
    }
    
}
