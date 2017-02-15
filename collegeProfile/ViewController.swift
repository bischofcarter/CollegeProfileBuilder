//
//  ViewController.swift
//  collegeProfile
//
//  Created by Carter Bischof on 2/8/17.
//  Copyright © 2017 Carter Bischof. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myTableView: UITableView!
    
    
    var myCollegeList:[CollegeList] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    
        
    }
    
    @IBAction func addButtonTapped(_ sender: Any)
    {
        let alert = UIAlertController (title: "Add College", message: nil, preferredStyle: .alert)
        alert.addTextField  { (collegeTextField) in collegeTextField.placeholder = "Add College Here"
    }
    
        alert.addTextField { (sizeTextField) in
            sizeTextField.placeholder = "Add Number of Students Here"
        }
        
        alert.addTextField { (locationTextField) in locationTextField.placeholder = "Add Location Here"
        }
        
        let cancelAction = UIAlertAction (title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default) { (action) in
            
            let collegeTextField = alert.textFields?[0]
            
            let sizeTextField = alert.textFields?[1]
            
            self.myCollegeList.append(CollegeList(Title: (collegeTextField?.text)!, Size: (sizeTextField?.text)!))
            
            self.myTableView.reloadData()
            
            
        }
        
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return myCollegeList.count
    }
    
    //Required fuction - sets the cells in TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //sets cell identifier
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = myCollegeList[indexPath.row].title
        
        //FIGURE OUT THIS
        
        
        return cell
    }
    
    //Allows you to delete a row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if (editingStyle == .delete)
        {
            myCollegeList.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }

    
    
}



