//
//  ProfileViewModel.swift
//  PinOn
//
//  Created by Jeffrey Chang on 2/22/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

struct ProfileViewModel {
    private let name: String
    private let email: String
    private let image: UIImage
    
    init(user: UserProfileInfo) {
        self.name = user.name
        self.email = user.email
        self.image = user.image
    }
    
    func nameAttributedString() -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: name, attributes: [.font: UIFont.systemFont(ofSize: 16, weight: .heavy), NSAttributedString.Key.foregroundColor: UIColor.black])
        return attributedText
    }
    
    func emailAttributedString() -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string: email, attributes: [.font: UIFont.systemFont(ofSize: 16, weight: .light), NSAttributedString.Key.foregroundColor: UIColor.black])
        return attributedText
    }
    
    func profileImage() -> UIImage {
        return image
    }
}
