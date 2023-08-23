//
//  SecondViewController.swift
//  TableView
//
//  Created by Yogesh Patel on 16/10/21.
//

import UIKit

struct ContactModel{
    var fname: String
    var lname: String
    var profileImage: UIImage?
}

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var arrData = ["Yogesh", "Mihir", "Uvesh", "Pratik"]
    var dictData:[[String: Any?]] = [
        [
            "fname": "Yogesh",
            "lname": "Patel",
            "profile": UIImage(systemName: "y.circle.fill")
        ],
        [
            "fname": "Mihir",
            "lname": "almaula",
            "profile": UIImage(systemName: "m.circle.fill")
        ],
        [
            "fname": "Uvesh",
            "lname": "Imam",
            "profile": UIImage(systemName: "u.circle.fill")
        ],
        [
            "fname": "Pratik",
            "lname": "Zora",
            "profile": UIImage(systemName: "p.circle.fill")
        ]
    ]
    
    var contactArray = [ContactModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")//cell create karyo
        
        let person1 = ContactModel(fname: "YYY", lname: "PPP", profileImage: UIImage(systemName: "y.circle.fill"))
        print(person1.fname)
        print(person1.lname)
        
        contactArray = [
            ContactModel(fname: "Yogesh", lname: "Patel", profileImage: UIImage(systemName: "y.circle.fill")),
            ContactModel(fname: "Mihir", lname: "almaula", profileImage: UIImage(systemName: "m.circle.fill")),
            ContactModel(fname: "Uvesh", lname: "Imam", profileImage: UIImage(systemName: "u.circle.fill")),
            ContactModel(fname: "Pratik", lname: "Zora", profileImage: UIImage(systemName: "p.circle.fill"))
        ]
        
       //contactArray.append(person1)
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dictData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
      
        cell?.textLabel?.text = dictData[indexPath.row]["fname"] as? String
        //dictData[0]["fname"] //dict["fname"]
        cell?.detailTextLabel?.text = dictData[indexPath.row]["lname"] as? String
        cell?.imageView?.image = dictData[indexPath.row]["profile"] as? UIImage
         
        
//        let contact = contactArray[indexPath.row]
//        cell?.textLabel?.text = contact.fname
//        cell?.detailTextLabel?.text = contact.lname
//        cell?.imageView?.image = contact.profileImage
        
        return cell!
    }
    
    
    //Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(contactArray[indexPath.row])
        if let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController{
            
//            detailViewController.contactModel = contactArray[indexPath.row]
            detailViewController.dict = dictData[indexPath.row]//Assign karyu
            
            self.navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}


/*
 IMAGE PASS KARVANI 6E - CELL IMAGE BATAVANI 6E.(CELL.IMAGEVIEW.IMAGE)
 //detail ma ae j image pass thase
 
 //Array of dictionary and arrya of model
 */
