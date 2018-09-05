//
//  SettingsController.swift
//  EventsIOS
//
//  Created by Luis Castillo on 17/07/18.
//  Copyright © 2018 Luis Castillo. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class SettingsController: UIViewController {

    //private var settingsViewModel: SettingsViewModel!
    private var settingsModel: Webservice!
    @IBOutlet weak var header: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if Themes.isNight() {
            header.image = Themes.headerGobalNight
            self.view.backgroundColor = Themes.backgroundNight
        }
    }

    @IBAction func editEmail(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goEditSettings", sender: self )
    }
    
    @IBAction func editPassword(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goEditSettings", sender: self )
    }
    
    @IBAction func editBirthday(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goEditSettings", sender: self )
    }
    
    @IBAction func editCredit(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goPayment", sender: self )
    }
    
    @IBAction func behind(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
   

}
