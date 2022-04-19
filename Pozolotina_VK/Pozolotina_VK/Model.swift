//
//  Model.swift
//  Pozolotina_VK
//
//  Created by angelina on 19.04.2022.
//

import Foundation
import UIKit

class Group {
    let image: UIImage?
    let name: String
    
    init(image: UIImage? = nil, name: String) {
        self.image = image
        self.name = name
    }
}


struct User {
    let image: UIImage?
    let name: String
    //let friends: [PFriends]
}
