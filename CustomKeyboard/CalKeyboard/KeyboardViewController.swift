//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var keyboardView: UIView!

    let num1:String =  "1"
    let num2:String =  "2"
    let num3:String =  "3"
    let num4:String =  "4"
    let num5:String =  "5"
    let num6:String =  "6"
    let num7:String =  "7"
    let num8:String =  "8"
    let num9:String =  "9"
    let num0:String =  "0"

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet weak var void: UIButton!
    @IBOutlet weak var space: UIButton!
    @IBOutlet weak var parenthesis: UIButton!
    @IBOutlet weak var newLine: UIButton!
    
    @IBOutlet weak var print: UIButton!
    @IBOutlet weak var int: UIButton!
    @IBOutlet weak var double: UIButton!
    @IBOutlet weak var string: UIButton!
    @IBOutlet weak var char: UIButton!

    @IBOutlet weak var if_state: UIButton!
    @IBOutlet weak var else_state: UIButton!
    @IBOutlet weak var while_loop: UIButton!
    @IBOutlet weak var do_while_loop: UIButton!
    @IBOutlet weak var for_loop: UIButton!
    
    @IBOutlet weak var tab: UIButton!
    @IBOutlet weak var return_state: UIButton!
    @IBOutlet weak var class_sen: UIButton!
    @IBOutlet weak var public_state: UIButton!
    @IBOutlet weak var private_state: UIButton!
    @IBOutlet weak var delete_state: UIButton!
    

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadActions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
        
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
    }
    
    func loadActions(){
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        if_state.addTarget(self, action: "if_input", forControlEvents: .TouchUpInside)
        else_state.addTarget(self, action: "else_input", forControlEvents: .TouchUpInside)
        while_loop.addTarget(self, action: "for_input", forControlEvents: .TouchUpInside)
        for_loop.addTarget(self, action: "while_input", forControlEvents: .TouchUpInside)
        do_while_loop.addTarget(self, action: "do_while_input", forControlEvents: .TouchUpInside)
        return_state.addTarget(self, action: "return_input", forControlEvents: .TouchUpInside)
        
    }
    
    func if_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("if(...){...}")
        
    }
    func else_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("else{...}")
        
    }
    func for_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("for(...){...}")
        
    }
    func while_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("while(...){...}")
        
    }
    func do_while_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("do{...}while();")
        
    }
    func return_input(){
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("return...;")
        
    }
    

}
