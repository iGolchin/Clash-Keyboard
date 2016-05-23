//
//  KeyboardViewController.swift
//  Clash Keyboard Farsi
//
//  Created by Farid Golchin on 1/18/16.
//  Copyright © 2016 iGO Studio. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    var keyboardView : UIView!
    var persianKeyboard : UIView!
    @IBOutlet weak var clashLabel : UILabel!
    
    
//====================================================

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }
    
//====================================================

    override func viewDidLoad() {
        super.viewDidLoad()
    
        loadKeyboard()

    }
//====================================================
    @IBAction func persiankeyboard(){
    
        let keyboardNib = UINib(nibName: "persianView", bundle: nil)
        persianKeyboard = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.backgroundColor = persianKeyboard.backgroundColor
        view.addSubview(persianKeyboard)
        
    
    }       

//====================================================
    @IBAction func nextKeyboard(){
        advanceToNextInputMode()
    }
//====================================================
    @IBAction func deleteText(){
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
//====================================================
    @IBAction func spacePressed(sender: UIButton!){
        
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
        
    }
    
//====================================================

    @IBAction func keyPressed(sender: UIButton!){
        
        let keyPressed = sender.titleLabel?.text
     
        
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(keyPressed!)
        
        
 
    }
//====================================================
        @IBAction func englishkeyboard() {
        
        let keyboardNib = UINib(nibName: "KeyboardView", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.backgroundColor = keyboardView.backgroundColor
        view.addSubview(keyboardView)
        
    }
//====================================================
    func loadKeyboard() {
        
        let keyboardNib = UINib(nibName: "KeyboardView", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.backgroundColor = keyboardView.backgroundColor
        view.addSubview(keyboardView)
        
    }
//====================================================
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

}
