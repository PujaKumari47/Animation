//
//  MasterTableViewController.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/7/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    var monsters = [Monster]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.monsters.append(Monster(name: "Cat-Bot", description: "MEE-OW",
                                     iconName: "Image.png", weapon: Weapon.Sword))
        self.monsters.append(Monster(name: "Dog-Bot", description: "BOW-WOW",
                                     iconName: "Image-1.png", weapon: Weapon.Blowgun))
        self.monsters.append(Monster(name: "Explode-Bot", description: "BOOM!",
                                     iconName: "meetexplodebot.png", weapon: Weapon.Smoke))
        self.monsters.append(Monster(name: "Fire-Bot", description: "Will Make You Stamed",
                                     iconName: "meetfirebot.png", weapon: Weapon.NinjaStar))
        self.monsters.append(Monster(name: "Ice-Bot", description: "Has A Chilling Effect",
                                     iconName: "meeticebot.png", weapon: Weapon.Fire))
        self.monsters.append(Monster(name: "Mini-Tomato-Bot", description: "Extremely Handsome",
                                     iconName: "meetminitomatobot.png", weapon: Weapon.NinjaStar))
    }
    

    // MARK: - Table view data source & delegate Methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.monsters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        // Configure the cell...
        let monster = self.monsters[indexPath.row]
        cell.textLabel?.text = monster.name
        return cell
    }
 

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

}
