//
//  QuestionTableViewCell.swift
//  Task1
//
//  Created by Michael Zanaty on 5/5/23.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    func configure(with question: Question) {
            questionLabel.text = question.question
        }
    
}
