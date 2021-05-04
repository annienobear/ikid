//
//  DadViewController.swift
//  ikid
//
//  Created by Hailun Zhang on 5/4/21.
//  Extension: https://stackoverflow.com/questions/33632266/animate-text-change-of-uilabel
//  Joke: https://parade.com/940979/kelseypelzer/best-dad-jokes/

import UIKit

class DadViewController: UIViewController {
    
    var joke: String = "Did you hear about the kidnapping at school?"
    var ans: String = "It’s fine, he woke up."
    var flipped: Bool = false
    
    @IBOutlet weak var jokeLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        flipped = false;
       }
    
    @IBAction func button(_ sender: UIButton) {
        if let aLabel = jokeLabel {
            aLabel.pushTransition(0.4)
            if flipped {
                aLabel.text = joke
            } else {
                aLabel.text = ans
            }
            flipped = !flipped
        }
    }
    
}
