//
//  CallQuestions.swift
//  Task1
//
//  Created by Michael Zanaty on 5/5/23.
//
//APIkey https://opentdb.com/api.php?amount=4&category=15&type=multiple
import Foundation

struct Question {
    let question: String
    let answers: [String]
    let correctAnswer: String
    
//    var allAnswers: [String] {
//            return [correctAnswer] + incorrectAnswers
//        }
}

func getQuestions(completion: @escaping ([Question]) -> Void) {
    let url = URL(string: "https://opentdb.com/api.php?amount=4&category=15&type=multiple")!
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
            print("Error fetching data from API: \(error!)")
            return
        }
        if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
            if let results = json["results"] as? [[String: Any]] {
                let questions = results.map { result -> Question in
                    let question = result["question"] as! String
                    let correctAnswer = result["correct_answer"] as! String
                    var answers = result["incorrect_answers"] as! [String]
                    answers.append(correctAnswer)
                    answers.shuffle()
                    return Question(question: question, answers: answers, correctAnswer: correctAnswer)
                }
                completion(questions)
            }
        }
    }
    task.resume()
}
