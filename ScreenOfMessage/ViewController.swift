//
//  ViewController.swift
//  ScreenOfMessage
//
//  Created by Apple on 1.07.2020.
//  Copyright © 2020 erdogan. All rights reserved.
//

import UIKit

struct ChatMessage {
    let text: String
    let isIncoming: Bool
}

class ViewController: UITableViewController {

    fileprivate let cellId = "id"

    
    let textMessages = [
        ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", isIncoming: true),
        ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.", isIncoming: true),
        ChatMessage(text: "Consectetur adipiscing elit !", isIncoming: false),
        ChatMessage(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.", isIncoming: false),
        ChatMessage(text: "Bu mesaj sola yaslı ve arkaplan rengi beyaz olmalı !", isIncoming: true)
    ]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Mesaj Ekranı"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
    
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMessages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
        
        let chatMessage = textMessages[indexPath.row]
        //cell.messageLabel.text = chatMessage.text
        cell.chatMessage = chatMessage
        
        return cell
    }


}


