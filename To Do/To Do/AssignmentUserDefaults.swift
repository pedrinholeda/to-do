//
//  AssignmentUserDefauts.swift
//  To Do
//
//  Created by Pedro Léda on 02/09/21.
//

import UIKit

class AssignmentUserDefaults {
    // MARK: Properties
    let key = "listkey"
    var assignments: [String] = []
    
    // MARK: Outlets
    
    // MARK: Initialization
    
    // MARK: Overrides
    
    // MARK: Actions
    
    // MARK: Methods
    func save(assignment: String) {
        
        assignments = list()
        
        assignments.append(assignment)
        UserDefaults.standard.set(assignments, forKey: key)
    }
    
    func remove (indice: Int) {
        assignments = list()
        assignments.remove(at: indice)
        UserDefaults.standard.set(assignments, forKey: key)
    }
    
    func list() -> Array<String> {
        let content = UserDefaults.standard.object(forKey: key)
        
        if content != nil {
            return content as! Array<String>
        } else {
            return []
        }
    }

}
