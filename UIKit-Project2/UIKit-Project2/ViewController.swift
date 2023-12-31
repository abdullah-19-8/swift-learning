//
//  ViewController.swift
//  UIKit-Project2
//
//  Created by Abdulla Ahmad on 12/31/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var questions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        countries.append("estonia")
        //        countries.append("france")
        //        countries.append("germany")
        //        countries.append("ireland")
        //        countries.append("italy")
        //        countries.append("monaco")
        //        countries.append("nigeria")
        //        countries.append("poland")
        //        countries.append("russia")
        //        countries.append("spain")
        //        countries.append("uk")
        //        countries.append("us")
        
        countries += [
            "estonia", "france", "germany",
            "ireland", "italy", "monaco",
            "nigeria", "poland", "russia",
            "spain", "uk", "us"
        ]
        
        scoreLabel.text = "Score: \(score)"
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestions()
        
        navigationItem.largeTitleDisplayMode = .never
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showScore))
    }
    
    func askQuestions(action: UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        questions += 1
        
        if questions == 10 {
            title = "10 Questions"
            
            let ac = UIAlertController(title: title, message: "Your Score is \(score)", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestions))
            scoreLabel.text = "Score: \(score)"
            present(ac, animated: true)
            
        } else {
            
            if sender.tag == correctAnswer{
                title = "Correct"
                score += 1
            } else {
                title = "Wrong"
                score -= 1
            }
            
            let ac = title == "Correct" ? UIAlertController(title: title, message: "Your Score is \(score)", preferredStyle: .alert) : UIAlertController(title: title, message: "Wrong this is a flag of \(countries[sender.tag])", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestions))
            scoreLabel.text = "Score: \(score)"
            present(ac, animated: true)
        }
        
    }
    
    @objc func showScore() {
        let ac = UIAlertController(title: nil, message: "Your Score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(ac, animated: true)
    }
    
}
