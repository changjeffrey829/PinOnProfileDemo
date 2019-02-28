//
//  ViewController.swift
//  PinOn
//
//  Created by Jeffrey Chang on 2/22/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileView = ProfileView()
    var profileViewModel: ProfileViewModel? {
        didSet {
            profileView.profileImageView.image = profileViewModel?.profileImage()
            profileView.nameLabel.attributedText =
                profileViewModel?.nameAttributedString()
            profileView.emailLabel.attributedText = profileViewModel?.emailAttributedString()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view = profileView
        configButtons()
        hideKeyboard()
        configView()
    }
    
    fileprivate func configView() {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = #imageLiteral(resourceName: "YellowBackground")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
    }
    
    fileprivate func configButtons() {
        profileView.redeemButton.addTarget(self, action: #selector(redeemingAReferralCode), for: .touchUpInside)
        profileView.couponButton.addTarget(self, action: #selector(launchCouponViewController), for: .touchUpInside)
        profileView.editProfileButton.addTarget(self, action: #selector(launchEditProfile), for: .touchUpInside)
        profileView.settingsButton.addTarget(self, action: #selector(launchSettings), for: .touchUpInside)
    }
    
    fileprivate func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard))
        
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    //MARK: OBJC FUNCTIONS
    @objc fileprivate func redeemingAReferralCode() {
        print("redeem code")
    }
    
    @objc fileprivate func launchCouponViewController() {
        print("launch couponeViewController")
    }
    
    @objc fileprivate func launchEditProfile() {
        print("launch editProfileViewController")
    }
    
    @objc fileprivate func launchSettings() {
        print("launch settingsViewController")
    }
    
    @objc fileprivate func dismissKeyboard() {
        view.endEditing(true)
    }
}

