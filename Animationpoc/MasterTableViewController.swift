//
//  MasterTableViewController.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/7/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit
import Lottie

protocol MonsterSelectionDelegate: class {
    func monsterSelected(newMonster: Monster)
}
class MasterTableViewController: UITableViewController {
    var monsters = [Monster]()
    weak var delegate: MonsterSelectionDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        //implementLottie()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         //animateTable()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        
        self.monsters.append(Monster(name: "feedBack", description: "MEE-OW",
                                     iconName: "Image.png", weapon: Weapon.Sword, animationString: AnimationLottie.Loading))
        self.monsters.append(Monster(name: "Send", description: "BOW-WOW",
                                     iconName: "Image-1.png", weapon: Weapon.Blowgun,  animationString: AnimationLottie.Error))
        self.monsters.append(Monster(name: "Loader", description: "BOOM!",
                                     iconName: "ninjastar.png", weapon: Weapon.Smoke,  animationString: AnimationLottie.Handling))
        self.monsters.append(Monster(name: "wifiWiper", description: "Will Make You Stamed",
                                     iconName: "smoke.png", weapon: Weapon.NinjaStar, animationString: AnimationLottie.Reading))
        self.monsters.append(Monster(name: "Update", description: "Has A Chilling Effect",
                                     iconName: "sword.png", weapon: Weapon.Fire,  animationString: AnimationLottie.Reloading))
        self.monsters.append(Monster(name: "SimpleCheck", description: "Extremely Handsome",
                                     iconName: "fire.png", weapon: Weapon.NinjaStar,  animationString: AnimationLottie.Stars))
        
        self.monsters.append(Monster(name: "Setting", description: "Extremely Handsome",
                                     iconName: "fire.png", weapon: Weapon.NinjaStar,  animationString: AnimationLottie.Setting))
        self.monsters.append(Monster(name: "SimpleLoader", description: "Extremely Handsome",
                                     iconName: "fire.png", weapon: Weapon.NinjaStar,  animationString: AnimationLottie.SimpleLoader))
        
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
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMonster = self.monsters[indexPath.row]
        self.delegate?.monsterSelected(newMonster: selectedMonster)
        if let detailViewController = self.delegate as? DetailViewController {
            splitViewController?.showDetailViewController(detailViewController.navigationController!, sender: nil)
        }
    }
    
    
    
    func animateTable() {
        tableView.reloadData()
        let cells = tableView.visibleCells
        let tableViewHeight = tableView.bounds.size.height
        
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        var delayCounter = 0
        for cell in cells {
            UIView.animate(withDuration: 1.75, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }
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
