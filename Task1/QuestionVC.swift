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


class QuestionVC: UIViewController {
    
    @IBOutlet weak var QuestionTableView: UITableView!
    //var questions: [Question] = []
    var questionTableView: QuestionTableView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTableView = Task1.QuestionTableView(frame: .zero, style: .plain)
        view.addSubview(questionTableView!)

        getQuestions { questions in
            self.questionTableView?.questions = questions
            DispatchQueue.main.async {
                self.questionTableView?.reloadData()
            }
        }
    }
}
//import UIKit
//
//class QuestionVC: UITableViewController {
//

//    var questions: [Question] = []
//    let tableView: UITableView = QuestionTableView(frame: .zero, style: .plain)
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
//        getQuestions { questions in
//            self.questions = questions
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
//        }
//    }
//
//
//}
    
    
    

    

   



