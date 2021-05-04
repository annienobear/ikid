//
//  CodeViewController.swift
//  ikid
//
//  Created by Hailun Zhang on 5/4/21.
//  Joke: https://www.netfunny.com/rhf/jokes/93q2/recursion.html
//  Extension: https://stackoverflow.com/questions/33632266/animate-text-change-of-uilabel

import UIKit

class CodeViewController: UIViewController {

    var joke: String = "Knock Knock."
    var ans: [String] = ["Who's There?", "Recursion", "Recursion who?", "Knock Knock..."]
    var flipped: Int = 0
    @IBOutlet weak var jokeLabel: UILabel!
    @IBAction func flip(_ sender: UIButton) {
        if let aLabel = jokeLabel {
            aLabel.pushTransition(0.4)
            switch flipped {
            case 0, 1, 2, 3:
                jokeLabel.text = ans[flipped]
                flipped += 1
            default:
                jokeLabel.text = joke
                flipped = 0
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        flipped = 0
    }


}
