//
//  ViewController.swift
//  ChattyApp
//
//  Created by Macbook on 05/07/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import UIKit
import Foundation

class LoginViewController: UIViewController {
	
	@IBOutlet weak var userNameTextField: UITextField!

	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		let userName = self.userNameTextField.text
		
		let chatRoomsTVC = segue.destination as!
		ChatRoomsTableViewController
		chatRoomsTVC.userName = userName
		
	}
}

