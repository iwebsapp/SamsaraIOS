//
//  BindingTextField.swift
//  EventsIOS-Debug
//
//  Created by Luis Castillo on 29/08/18.
//  Copyright © 2018 Luis Castillo. All rights reserved.
//

import Foundation
import UIKit

class BindingTextField: UITextField {
    
    var textChanged: (String) -> () = { _ in }
    
    func bind(callback:@escaping (String) -> () ){
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField){
        self.textChanged(textField.text!)
    }
    
}
