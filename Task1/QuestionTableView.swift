//
//  QuestionTableView.swift
//  Task1
//
//  Created by Michael Zanaty on 5/8/23.
//

import UIKit

class QuestionTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    var questions: [Question] = []
    var questionVC: QuestionVC? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        dataSource = self
        delegate = self
    }
    
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
        let question = questions[indexPath.row]
        let correctAnswer = question.correctAnswer
        let viewController = UIApplication.shared.windows.first?.rootViewController
        questionVC?.performSegue(withIdentifier: "showAnswerSegue", sender: correctAnswer)
    }
}


//import Foundation
//import UIKit
//
//class QuestionTableView: UITableView {
//
//
//    var questions: [Question] = []
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return questions.count
//    }
//
//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! QuestionTableViewCell
//        let question = questions[indexPath.row]
//        cell.configure(with: question)
//        return cell
//    }
//
//     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let question = questions[indexPath.row]
//        let correctAnswer = question.correctAnswer
//        //performSegue(withIdentifier: "showAnswer", sender: correctAnswer)
//    }
//
//}
