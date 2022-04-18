//
//  Friends.swift
//  Pozolotina_VK
//
//  Created by angelina on 16.04.2022.
//

import Foundation
import UIKit

struct Friends {
    let image: UIImage?
    let name: String
    let friends: [PFriends]
}

struct PFriends {
    let image: UIImage
    let name: String
}


let PFriendsArray = [
    PFriends(image: UIImage(named: "pngwing.com")!, name: "Подногтем"),
    PFriends(image: UIImage(named: "pngwing.com")!, name: "Подногтем"),
    PFriends(image: UIImage(named: "pngwing.com")!, name: "Подногтем"),
    PFriends(image: UIImage(named: "pngwing.com")!, name: "Подногтем"),
    PFriends(image: UIImage(named: "pngwing.com")!, name: "Подногтем")
]
