//
//  QuestionTableView.swift
//  Task1
//
//  Created by Michael Zanaty on 5/8/23.
//

import Foundation
import UIKit

class QuestionTableView: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    
    var questions: [Question] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! QuestionTableViewCell
        let question = questions[indexPath.row]
        cell.configure(with: question)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Handle the row selection event here.
    }
}
