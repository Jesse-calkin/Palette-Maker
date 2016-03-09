//
//  ViewController.swift
//  Palette Maker
//
//  Created by jesse calkin on 3/8/16.
//  Copyright © 2016 Shoshin Boogie. All rights reserved.
//

import Cocoa

struct Color {
    var name: String
    var value: NSColor
}

class ViewController: NSViewController {

    @IBOutlet weak var colorWell: NSColorWell!
    @IBOutlet weak var colorInfo: NSTextFieldCell!
    @IBOutlet weak var nameTextField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func colorPicked(sender: NSColorWell) {
        let color = Color(name: nameTextField.stringValue, value: sender.color)

        let red = String(format: "R: %\(1.2)f", color.value.redComponent)
        let green = String(format: " G: %\(1.2)f", sender.color.greenComponent)
        let blue = String(format: " B: %\(1.2)f", sender.color.blueComponent)
        let alpha = String(format: " A: %\(1.2)f", sender.color.alphaComponent)

        colorInfo.stringValue = red + green + blue + alpha

        print(color)
    }

}

