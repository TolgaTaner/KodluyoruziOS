//
//  AddCheckListViewController.swift
//  TodoApp
//
//  Created by Tolga TANER on 25.08.2019.
//  Copyright © 2019 Tolga TANER. All rights reserved.
//

import UIKit

class AddCheckListViewController: UIViewController {
    
    //Task ismini set etmemize yarıyor.
    @IBOutlet weak var taskNameTextField: UITextField!
    
    //Task oluşturmamızı sağlayan buton.
    @IBOutlet weak var doneBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneBarButtonItem.isEnabled = false 
        taskNameTextField.delegate = self
    }
    
    //Basıldığında yeni bir task oluşur.
    @IBAction func doneButtonTapped(_ sender: Any) {
        
    }
    
}

extension AddCheckListViewController : UITextFieldDelegate {

    // Eski ve yeni text değerlerini tutarak, done butonunun state'ini değiştirmek.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let oldText = textField.text,
            let stringRange = Range(range,in:oldText) else {return false}
        let newText = oldText.replacingCharacters(in: stringRange, with: string)
        doneBarButtonItem.isEnabled = newText.isEmpty ? false : true
        return true
    }
}
