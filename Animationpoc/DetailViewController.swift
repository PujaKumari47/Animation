//
//  DetailViewController.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/7/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    var monster: Monster! {
        didSet (newMonster) {
            self.refreshUI()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()

        // Do any additional setup after loading the view.
    }
    
    func refreshUI() {
        nameLabel?.text = monster.name
        descriptionLabel?.text = monster.description
        imageView?.image = UIImage(named: monster.iconName)
        mainImageView?.image = monster.weaponImage()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
