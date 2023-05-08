//
//  EntryVC.swift
//  Task1
//
//  Created by Michael Zanaty on 5/8/23.
//

import UIKit

class EntryVC: UIViewController {
    
   
    @IBAction func BeginButton(_ sender: Any) {
        performSegue(withIdentifier: "showQuestionSegue", sender: nil)
    }
    
}
