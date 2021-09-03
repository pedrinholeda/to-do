//
//  ToDoTableViewController.swift
//  To Do
//
//  Created by Pedro Léda on 02/09/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    // MARK: Properties
    var assignments: [String] = []


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateAssignment()
    }
    
    func updateAssignment() {
        let assignment = AssignmentUserDefaults()
        assignments = assignment.list()
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let assignment = AssignmentUserDefaults()
            assignment.remove(indice: indexPath.row)
            updateAssignment()
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return assignments.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath)

        cell.textLabel?.text = assignments [indexPath.row]
        return cell
    }

}
