//
//  ViewController.swift
//  TimeBox
//
//  Created by Anilkumar kotur on 10/08/19.
//  Copyright © 2019 Swifter. All rights reserved.
//

import Cocoa

class Task {
    var title: String
    var time: Date
    
    init(title: String, time: Date) {
        self.title = title
        self.time = time
    }
}

class ViewController: NSViewController {

    @IBOutlet weak var titleTextField: NSTextField!
    @IBOutlet weak var timePicker: NSDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TEST TIMER
        let _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        
        let _ = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            print("2nd Way")
        }
    }

    @objc func fireTimer() {
        print("Timer fired!")
    }
    
    @IBAction func doneButtonClick(_ sender: Any) {
        let time = self.timePicker.dateValue
        let title = self.titleTextField.stringValue
        
        if !title.isEmpty {
            let task = Task(title: title, time: time)
            print(task)
        }
        
    }
}

