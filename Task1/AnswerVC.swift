//
//  AnswerVC.swift
//  Task1
//
//  Created by Michael Zanaty on 5/5/23.
//

import UIKit

class AnswerVC: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var Answer: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = Answer
    }
    
}
