//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Nia Davis on 3/13/20.
//  Copyright © 2020 Nia Davis. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    var questionText: String = ""
    var answerText: String = ""
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func didTapOnCancel(_ sender: Any) {
         dismiss(animated: true)
     }
    @IBAction func didTapOnDone(_sender: Any) {
        
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        dismiss(animated: true)
    }
}
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


