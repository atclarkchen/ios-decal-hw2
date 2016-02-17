//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit
import Foundation


class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    
    
    @IBOutlet var stephButton: UIButton!
    @IBOutlet var klayButton: UIButton!
    @IBOutlet var draymondButton: UIButton!
    @IBOutlet var kobeButton: UIButton!
    @IBOutlet var lbjButton: UIButton!
//    @IBOutlet var hardenButton: UIButton!
    
    //hi bub 
    //don't give up!
    //love you <3
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface() //load keyboard
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
    
    //space method
    
    func addSpace() {
        let input: String = " "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    //return method
    func addReturn() {
        let input: String = "\n"
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    //Delete Method
    func addDelete() {
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.deleteBackward()
    }
    
    //steph
    func addSteph() {
        let input: String = "Curry with a three! "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    //klay
    func addKlay() {
        let input: String = "Splash brother number 2! "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    //draymond
    func addDraymond() {
        let input: String = " Draymond flexes! "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    func addKobe() {
        let input: String = " Kobe the legend. "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }
    
    //LBJ
    func addLBJ() {
        let input: String = " All hail the king. "
        let textDocumentProxy = self.textDocumentProxy as UITextDocumentProxy
        textDocumentProxy.insertText(input)
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil) //MAKE NIB: take Keyboard.xib and make it a view (or nib)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView //SPECIFY OWNER:who own's the nib (cast as UIView)
        
        //SPECIFY FRAME
        keyboardView.frame = view.frame
        view.addSubview(keyboardView) //adding Subview means putting this view ON TOP of existing view (eg: keyboard OVER screen)
        

        view.backgroundColor = keyboardView.backgroundColor
        
        // Initialize button by adding a target (it is now "listening" for things, telling them what functions to call)
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        
        spaceButton.addTarget(self, action: "addSpace", forControlEvents: .TouchUpInside) //WORKS
        returnButton.addTarget(self, action: "addReturn", forControlEvents: .TouchUpInside) //WORKS
        deleteButton.addTarget(self, action: "addDelete", forControlEvents: .TouchUpInside) //WORKS
        
        stephButton.addTarget(self, action: "addSteph", forControlEvents: .TouchUpInside)
        klayButton.addTarget(self, action: "addKlay", forControlEvents: .TouchUpInside)
        draymondButton.addTarget(self, action: "addDraymond", forControlEvents: .TouchUpInside)
        

        kobeButton.addTarget(self, action: "addKobe", forControlEvents: .TouchUpInside)
        lbjButton.addTarget(self, action: "addLBJ", forControlEvents: .TouchUpInside)
        
        
    }


}
