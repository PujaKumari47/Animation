//
//  MenuViewController.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/12/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import UIKit
import Foundation

enum LeftMenu: Int {
        case Inclusion = 0
        case Mettle = 1
        case Pioneering = 2
        case Accountability = 3
        case Collaboration = 4
        case Trust = 5
    
    }

    
    class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
        
        @IBOutlet weak var menuTableView: UITableView!
        var menuItemArray: [String] = []
        var menuItemImages: [String] = []
        var inclusionViewController: UIViewController!
        var mettleViewController: UIViewController!
        var pioneeringViewController: UIViewController!
        var accountabilityViewController: UIViewController!
        var collaborationViewController: UIViewController!
        var trustViewController: UIViewController!
        
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Do any additional setup after loading the view.
           
            menuTableView.contentInset = UIEdgeInsets(top: -10, left: 0, bottom: 0, right: 0)
            self.addCloseButton()
            self.navigationController?.view.setNeedsLayout()
            self.setupMenuTableView()
            instantiateViewControllers()
            
            
        }
        
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            
            
        }
        
        func addCloseButton() {
            let menuButton = UIBarButtonItem(barButtonSystemItem: UIImage(named: "close_menu")?.imageWithRenderingMode(.alwaysOriginal), barButtonSystemItem: .plain, target: self, action: #selector(MenuViewController.clickOnClose))
            self.navigationItem.leftBarButtonItem = menuButton
        }
        
        @objc func clickOnClose() {
            if let slideMenuController = self.slideMenuController() {
                slideMenuController.closeLeft()
            }
        }
        
        
        
        
        
        
        
        func setupMenuTableView() {
            self.menuTableView.delegate = self
            self.menuTableView.dataSource = self
        }
        
        func instantiateViewControllers() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let inclusionViewController = storyboard.instantiateViewController(withIdentifier: "InclusionViewController")
            self.inclusionViewController = UINavigationController(rootViewController: inclusionViewController)
            
            let mettleViewController = storyboard.instantiateViewController(withIdentifier: "MettleViewController")
            self.mettleViewController  = UINavigationController(rootViewController: mettleViewController )
            
            
            let pioneeringViewController = storyboard.instantiateViewController(withIdentifier: "PioneeringViewController")
            self.pioneeringViewController = UINavigationController(rootViewController: pioneeringViewController)
                
            
            let accountabilityViewController = storyboard.instantiateViewController(withIdentifier: "AccountabilityViewController")
            self.accountabilityViewController = UINavigationController(rootViewController: accountabilityViewController)
            
            let collaborationViewController = storyboard.instantiateViewController(withIdentifier: "CollaborationViewController")
            self.collaborationViewController = UINavigationController(rootViewController: collaborationViewController)
            
            let trustViewController = storyboard.instantiateViewController(withIdentifier: "TrustViewController")
            self.trustViewController = UINavigationController(rootViewController: trustViewController)
            
        }
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.menuItemArray.count
        }
        
        func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
            return 60
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell",
                                              for: indexPath as IndexPath) as! menuTableViewCell
            let title = self.menuItemArray[indexPath.row]
            let image = self.menuItemImages[indexPath.row]
            let menuImage = UIImage(named: image)
            cell.menuTitle.text = title
            cell.menuImage.image = menuImage
            
            return cell
        }
        
        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
                if let menu = LeftMenu(rawValue: indexPath.row) {
                    changeViewController(menu: menu)
                }
                
                
            
            
        }
        
        func changeViewController(menu: LeftMenu) {
            switch menu {
            case .Inclusion:
                self.slideMenuController()?.changeMainViewController(self.inclusionViewController, close: true)
            case .Mettle:
                self.slideMenuController()?.changeMainViewController(self.mettleViewController, close: true)
            case .Pioneering:
                self.slideMenuController()?.changeMainViewController(self.pioneeringViewController, close: true)
            case .Accountability:
                self.slideMenuController()?.changeMainViewController(self.accountabilityViewController, close: true)
            case .Collaboration:
                self.slideMenuController()?.changeMainViewController(self.collaborationViewController, close: true)
            case .Trust:
                self.slideMenuController()?.changeMainViewController(self.trustViewController, close: true)
                
            }
        }
        
            
        
        

        
        
        
        
        
    
    

    
}
