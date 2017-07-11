//
//  DetailViewController.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/7/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit
import Foundation
import Lottie

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    var animationView:LOTAnimationView!
    
    
    var monster: Monster! {
        didSet (newMonster) {
            self.refreshUI()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshUI()
        nameLabel.isHidden = true
        descriptionLabel.isHidden = true
        mainLabel.isHidden = true
        
//        let animationView = LOTAnimationView(name: "hamburger")
//        self.view.addSubview(animationView)
//
//        animationView.play(completion: { finished in
//            // Do Something
//        })
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    func removeSubview(subview: UIView?) {
        if subview != nil {
            subview!.removeFromSuperview()
        }
    }
    func getDeviceWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    func getDeviceHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
    func implementLottie() {
        removeSubview(subview: animationView)
        animationView = LOTAnimationView(contentsOf: monster.animationUrl()!)
        
        animationView.frame = CGRect(x: 0, y: 0, width: getDeviceWidth(), height: getDeviceHeight())
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFill
        animationView.loopAnimation = true
        
        // Applying UIView animation
        let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        animationView.transform = minimizeTransform
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.animationView.transform = CGAffineTransform.identity
        }, completion: nil)
        view.addSubview(animationView)
        animationView.play()
        
        
    }
    
    func refreshUI() {
//        nameLabel?.text = monster.name
//        descriptionLabel?.text = monster.description
//        imageView?.image = UIImage(named: monster.iconName)
//        mainImageView?.image = monster.weaponImage()
        
          implementLottie()
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

extension DetailViewController: MonsterSelectionDelegate {
    func monsterSelected(newMonster: Monster) {
        monster = newMonster
    }
}
