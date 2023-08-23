//
//  ViewController.swift
//  UITableViewCustom
//
//  Created by Yogesh Patel on 21/10/21.
//

import UIKit

struct ContactModel{
    var fisrtname: String
    var lastname: String
    var age: Int
    var profileImage: UIImage?
}

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var contactTableView: UITableView!
    
    // MARK: - Variables
    var contactArray = [ContactModel]()
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
       configuration()
    }

}

// MARK: - Methods
extension ViewController{
    
    func configuration(){
        contactConfiguration()
    }
    
    func contactConfiguration(){
        contactArray = [
            ContactModel(fisrtname: "Mihir", lastname: "Kumar", age: 22, profileImage: UIImage(systemName: "m.circle.fill")),
            ContactModel(fisrtname: "Uvesh", lastname: "Imam", age: 23, profileImage: UIImage(systemName: "u.circle.fill")),
            ContactModel(fisrtname: "Yogesh", lastname: "Patel", age: 24, profileImage: UIImage(systemName: "y.circle.fill")),
            ContactModel(fisrtname: "Parth", lastname: "Jadav", age: 25, profileImage: UIImage(systemName: "p.circle.fill")),
        ]
    }
}

// MARK: - UITableView Datasource Methods
extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ContactCell else{
            return UITableViewCell()
        }
        
        let contact = contactArray[indexPath.row]
        cell.contactConfiguration()
        cell.firstnameLabel.text = contact.fisrtname
        cell.lastnameLabel.text = contact.lastname
        cell.ageLabel.text = String(contact.age)
        cell.profileImageView.image = contact.profileImage
        
        return cell
        
        /*
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ContactCell{
            cell.firstnameLabel.text = contactArray[indexPath.row].fisrtname
            return cell
        }else{
            return UITableViewCell()
        }
        */
        //code
        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ContactCell
        
        let contact = contactArray[indexPath.row]
        cell?.firstnameLabel.text = contact.fisrtname
        cell?.lastnameLabel.text = contact.lastname
        cell?.ageLabel.text = String(contact.age)
        cell?.profileImageView.image = contact.profileImage
        
        return cell!
        */
    }
}

/*
 Task
 make function in cell file
 cell no code reduce karvano 6e
 ContactDetailsViewController - with constrain
 */
