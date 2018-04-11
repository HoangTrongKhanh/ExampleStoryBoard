//
//  AddPetTableViewController.swift
//  ExampleStoryBoard
//
//  Created by Hoàng Khánh on 4/6/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class AddPetTableViewController: UITableViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtTitle: UITextField!
    var pet:Pet?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            txtName.becomeFirstResponder()
        }
        else if indexPath.section == 1 {
            txtTitle.becomeFirstResponder()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePetDetailSegue" {
            pet = Pet(Name: txtName.text ?? "Default name", Detail: txtTitle.text ?? "Default title")
        }
    }

}
