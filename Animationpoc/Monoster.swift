//
//  Monoster.swift
//  Animationpoc
//
//  Created by Puja Kumari on 7/7/17.
//  Copyright © 2017 nineleaps. All rights reserved.
//

import Foundation
import UIKit
import Lottie

//an enum that defines a number of weapon options
enum Weapon {
    case Blowgun, NinjaStar, Fire, Sword, Smoke
}
enum Animation {
    case Submit,Like,Dislike,Pagination,Twitter
}
enum AnimationLottie {
    case Loading,Error,Handling,Reloading,Reading
}

class Monster {
    let name: String
    let description: String
    let iconName: String
    let weapon: Weapon
    let animation: Animation
    let animationString: AnimationLottie
    
    
    // designated initializer for a Monster
    init(name: String, description: String, iconName: String, weapon: Weapon,animation: Animation,animationString:AnimationLottie) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.weapon = weapon
        self.animation = animation
        self.animationString = animationString
    }
    
    // Convenience method for fetching a monster's weapon image
    func weaponImage() -> UIImage? {
        switch self.weapon {
        case .Blowgun:
            return UIImage(named: "blowgun.png")
        case .Fire:
            return UIImage(named: "fire.png")
        case .NinjaStar:
            return UIImage(named: "ninjastar.png")
        case .Smoke:
            return UIImage(named: "smoke.png")
        case .Sword:
            return UIImage(named: "sword.png")
        }
    }
    
    func animationUrl() -> URL? {
        switch self.animation {
        case .Submit:
            return URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/PinJump.json")!
        case .Like:
            return URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/HamburgerArrow.json")!
        case .Dislike:
            return URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/TwitterHeart.json")!
        case .Pagination:
            return URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/Watermelon.json")!
        case .Twitter:
        return URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/LottieLogo1.json")!
        }
    }
    
    func animationLottie() -> String? {
        switch self.animationString {
        case .Loading:
            return "servishero_loading"
        case .Error:
            return "servishero_loading"
        case .Handling:
            return "servishero_loading"
        case .Reloading:
            return "servishero_loading"
        case .Reading:
            return "servishero_loading"
        }
    }
    }
    
   

