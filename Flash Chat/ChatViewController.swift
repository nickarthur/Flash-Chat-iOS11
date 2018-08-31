//
//  ChatViewController.swift
//  Flash Chat
//
//  Created by Angela Yu on 29/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Declare instance variables here
    var messageArray :[String] = [String]()
    
    // We've pre-linked the IBOutlets
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageArray = ["message 1","messagefgnafnargjn sftjha sr artyhsr srjh  srjsr jh   2","messagefgnafnargjn sftjha sr artyhsr srjh  srjsr jh   2","message 3"]
        //TODO: Set yourself as the delegate and datasource here:
        
        
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        //TODO: Set yourself as the delegate of the text field here:
 
        
        
        //TODO: Set the tapGesture here:
        
        

        //TODO: Register your MessageCell.xib file here:

        messageTableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")
        
        // allow the view to resize to content
        // this is optional, it is likely better to just implement
        // the delegate methods,  `heightForRowAt and estimatedHeightForRowAt`
        // shown in the code below
        configureTableView()
        
    }

    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods

    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        let numRowsInSection = self.numberOfRowsInSection()
        return numRowsInSection
    }
    
    //TODO: Declare cellForRowAtIndexPath here:
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath) as! CustomMessageCell
        cell.messageBody.numberOfLines = 0

        cell.messageBody.text = messageArray[indexPath.row]
        return cell
    }
    
    // implement the following 2 delegate methods to get auto-resizing of tableView cells
    // base on content
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let dimension = UITableViewAutomaticDimension
        return dimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }

    
    // process selected row as desired
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let cell = tableView.cellForRow(at: indexPath) {
//        }
    }
    
    //TODO: Declare numberOfRowsInSection here:
    
    func numberOfRowsInSection() -> Int {
        return messageArray.count
    }
    
    //TODO: Declare tableViewTapped here:
    
    
    //TODO: Declare configureTableView here:
    
    // optional method of getting auto-resizing of tableView cells if not choosing
    // to impletment `heightForRowAt and estimatedHeightForRowAt` delegate methods
    // shown above ^
    func configureTableView() {
        //messageTableView.rowHeight = UITableViewAutomaticDimension
        //messageTableView.estimatedRowHeight = 120.0
    }

    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    

    
    //TODO: Declare textFieldDidBeginEditing here:
    
    
    
    
    //TODO: Declare textFieldDidEndEditing here:
    

    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //TODO: Send the message to Firebase and save it in our database
        
        
    }
    
    //TODO: Create the retrieveMessages method here:
    
    

    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
        //TODO: Log out the user and send them back to WelcomeViewController
        
        do {
            try Auth.auth().signOut()
                navigationController?.popToRootViewController(animated: true)
        } catch {
            print("Error. Logging Out: \(error)")
        }
        
    }
}



