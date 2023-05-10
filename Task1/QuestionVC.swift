//
//  ViewController.swift
//  Task1
//
//  Created by Michael Zanaty on 5/5/23.
//
//use api to pull info and display on screen
//separate funcs from View Controller
//sunday may 7
//extract TableView from the QuestionsVC and put it into its own file like http call
//find the bug , fix the bug
//Create a new VC at the start that has a header label at the top to welcome the user and a menu button below that says trivia
//extract out any models/structs needed into their own files
//create your own folder structure for files

import UIKit


class QuestionVC: UITableViewController {
    
    @IBOutlet weak var QuestionTableView: UITableView!
    var questions: [Question] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        QuestionTableView.dataSource = self
        QuestionTableView.delegate = self
        
       
        getQuestions { questions in
            self.questions = questions
            DispatchQueue.main.async {
                // Reload the table view data after the questions are set
                self.QuestionTableView.reloadData()
            }
        }
        
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showQuestionSegue" {
                let questionVC = segue.destination as! QuestionVC
                questionVC.questions = self.questions
            }
        }

//        getQuestions { questions in
//            self.questions = questions
//            DispatchQueue.main.async {
//                self.QuestionTableView.reloadData()
//            }
//        }
//    }
    
    // MARK: - Table view data source
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            if segue.identifier == "showAnswerSegue" {
//                let answerVC = segue.destination as! AnswerVC
//                if let indexPath = tableView.indexPathForSelectedRow {
//                    let question = questions[indexPath.row]
//                    answerVC.Answer = question.correctAnswer
//                }
//            }
//        }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return questions.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! QuestionTableViewCell
//        let question = questions[indexPath.row]
//        cell.configure(with: question)
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            performSegue(withIdentifier: "showAnswerSegue", sender: self)
//        }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let question = questions[indexPath.row]
//        let correctAnswer = question.correctAnswer
//        performSegue(withIdentifier: "showAnswer", sender: correctAnswer)
//    }
}


    
    
    

    

   



