//
//  QuestionTableView.swift
//  Task1
//
//  Created by Michael Zanaty on 5/8/23.
//

import Foundation
import UIKit


class QuestionTableVie: UITableView {
    
    // Data source
    var questions: [Question] = []
    
    // Closure to handle cell selection
    var didSelectRowAt: ((IndexPath) -> Void)?
    
    func doInit(vc: UIViewController) {
        self.delegate = vc as! UITableViewDelegate
        self.dataSource = vc as! UITableViewDataSource
    }
    
//    init() {
//
//
//        // Register cell class
////        self.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//
//        // Set table view delegate and data source
//        self.delegate = vc
//        self.dataSource = vc
//    }
//
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QuestionTableView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as! QuestionTableViewCell
        cell.textLabel?.text = questions[indexPath.row].question
        cell.configure(with: questions[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Call closure to handle cell selection
        didSelectRowAt?(indexPath)
    }
    
}
