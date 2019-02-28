//
//  ProfileView.swift
//  PinOn
//
//  Created by Jeffrey Chang on 2/22/19.
//  Copyright © 2019 Jeffrey Chang. All rights reserved.
//

import UIKit

class ProfileImageView: UIImageView {
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 100)
    }
    
}

class ProfileView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
    }
    override func layoutSubviews() {
        setupProfileImageView()
        setupLabelStackView()
        let redeemstackView = setupRedeemStackView()
        setupButtonsStackView(redeemStackView: redeemstackView)
    }
    
    //MARK: LAYOUT AND CONSTRAINTS
    fileprivate func setupProfileImageView() {
        addSubview(profileImageView)
        profileImageView.topAnchor.constraint(equalTo: topAnchor, constant: frame.height / 8).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    fileprivate func setupLabelStackView() {
        let labelStackView = UIStackView(arrangedSubviews: [nameLabel, emailLabel])
        labelStackView.axis = .vertical
        labelStackView.distribution = .fillEqually
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(labelStackView)
        labelStackView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 12).isActive = true
        labelStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: frame.width / 4).isActive = true
        labelStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -frame.width / 4).isActive = true
        labelStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setupRedeemStackView() -> UIStackView {
        let redeemStackView = UIStackView(arrangedSubviews: [redeemTextfield, redeemButton])
        redeemStackView.translatesAutoresizingMaskIntoConstraints = false
        redeemStackView.spacing = 10
        addSubview(redeemStackView)
        redeemStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24).isActive = true
        redeemStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        redeemStackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50).isActive = true
        redeemStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return redeemStackView
    }
    
    fileprivate func setupButtonsStackView(redeemStackView: UIStackView) {
        let buttonsStackView = UIStackView(arrangedSubviews: [couponButton, editProfileButton, settingsButton])
        buttonsStackView.spacing = 10
        buttonsStackView.axis = .vertical
        buttonsStackView.distribution = .fillEqually
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(buttonsStackView)
        buttonsStackView.topAnchor.constraint(equalTo: redeemStackView.bottomAnchor, constant: 50).isActive = true
        buttonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 36).isActive = true
        buttonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -36).isActive = true
        buttonsStackView.heightAnchor.constraint(equalToConstant: frame.height / 4).isActive = true
    }
    
    //MARK: UI OBJECTS
    let cancelButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" Redeem ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 10
        return button
    }()
    
    let profileImageView: ProfileImageView = {
        let iv = ProfileImageView(image: #imageLiteral(resourceName: "Brownie Coin"))
        iv.layer.cornerRadius = iv.intrinsicContentSize.width / 2
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "name"
        label.textAlignment = .center
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "email"
        label.textAlignment = .center
        return label
    }()
    
    let redeemTextfield: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter referral code"
        tf.borderStyle = .roundedRect
        tf.setLeftPaddingPoints(8)
        tf.layer.borderWidth = 1
        tf.layer.cornerRadius = 10
        return tf
    }()
    
    let redeemButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(" Redeem ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.layer.cornerRadius = 10
        return button
    }()
    
    let couponButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Coupons", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.cornerRadius = 10
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 22, bottom: 0, right: 0)
        return button
    }()
    
    let editProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Edit Profile", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.cornerRadius = 10
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 22, bottom: 0, right: 0)
        return button
    }()
    
    let settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Settings", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.textAlignment = .left
        button.backgroundColor = .white
        button.layer.shadowRadius = 5
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.cornerRadius = 10
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 22, bottom: 0, right: 0)
        return button
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
