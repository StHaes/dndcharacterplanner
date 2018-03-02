//
//  ViewController.swift
//  dndcharacterplanner
//
//  Created by Stijn Haesendonck on 02/03/2018.
//  Copyright © 2018 Stijn Haesendonck. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    //properties
    
    @IBOutlet weak var characterName: UITextField!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        characterName.delegate = self;
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
        // Dispose of any resources that can be recreated.
    }
    //textfieldelegates
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        characterName.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        name.text = characterName.text;
    }
    
    //actions
    
    @IBAction func setCharacterNameLabel(_ sender: UIButton) {
        name.text = " ";
    }
    
    


}

