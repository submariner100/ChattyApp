//
//  ChatRoomsTableViewController.swift
//  ChattyApp
//
//  Created by Macbook on 05/07/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import Foundation
import UIKit

class ChatRoomsTableViewController: UITableViewController {
	
	let chatRooms = ["iOS", "Android", ".NET", "Javascript"]
	var userName: String!
	
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return chatRooms.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		cell.textLabel?.text = chatRooms[indexPath.row]
		return cell
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		guard let indexPath = self.tableView.indexPathForSelectedRow else {
			return
		}
		
		let chatRoom = self.chatRooms[indexPath.row]
		
		let chatVC = segue.destination as! ChatViewController
		chatVC.userName = self.userName
		chatVC.chatRoom = chatRoom
		
	}

}

