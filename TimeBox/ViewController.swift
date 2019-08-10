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

