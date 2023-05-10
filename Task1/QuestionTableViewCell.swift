//
//  QuestionTableViewCell.swift
//  Task1
//
//  Created by Michael Zanaty on 5/5/23.
//

import UIKit

//&quot issues still exist
class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    func configure(with question: Question) {
        let decodedQuestion = question.question.removingPercentEncoding ?? ""
            questionLabel.text = decodedQuestion
        }
    
}
