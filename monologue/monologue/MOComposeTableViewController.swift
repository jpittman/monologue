//
//  ComposeTableViewController.swift
//  monologue
//
//  Created by jedi on 4/19/18.
//  Copyright © 2018 group6. All rights reserved.
//

import UIKit

// Declare a simple type alias so that we can assign alert handler completion
// handlers for variables for clearer code intent.
typealias ActionHandler = (UIAlertAction) -> Void

class MOComposeTableViewController: UITableViewController {
    
    @IBOutlet weak var TweetCountLabel: UILabel!
    @IBOutlet weak var WordCountLabel: UILabel!
    @IBOutlet weak var CharacterCountLabel: UILabel!
    
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK - Button Actions
    
    @IBAction func cancelAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    
        // Declare our title and message for our alert view.
        let title: String = "Save as a Draft?"
        let message: String = "Do you want to save the current tweets as a draft?"
        
        // Create an instance of Alert Controller.
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Build our handler for our YES action and add it to the controller instance.
        let yesAction: ActionHandler = {action in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler:yesAction))

        // Build our handler for our NO action and add it to the controller instance.
        let noAction: ActionHandler = {action in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: noAction))
        
        // Present out Alert Controller.
        self.present(alert, animated: true)
    }
    
    @IBAction func doneAction(_ sender: Any) {
    }
    
    
}
