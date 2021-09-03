//
//  RegisterViewController.swift
//  To Do
//
//  Created by Pedro Léda on 02/09/21.
//

import UIKit

class RegisterViewController: UIViewController {

    // MARK: Properties
    
    // MARK: Outlets
    @IBOutlet weak var textFieldAssignment: UITextField!
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Actions
    @IBAction func addAssignment(_ sender: Any) {
        if let userAssignment = textFieldAssignment.text {
            let assignment = AssignmentUserDefaults()
            assignment.save(assignment: userAssignment)
            textFieldAssignment.text = ""
        }
    }
    
    // MARK: Methods


}
